package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;
import plume.entities.RoleModel;
import plume.repository.RoleRepository;
import plume.repository.UserRepository;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;



@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private TokenService tokenService;
    @Autowired
    private EmailService emailService;

    private ApplicationUser user;

    PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(12);

    @Override
    public ApplicationUser validateLogin(String username, String password) {
        ApplicationUser user = userRepository.getApplicationUserByUsername(username);
        if(user != null && passwordEncoder.matches(password, user.getPassword())) {
            this.user = userRepository.getApplicationUserByUsername(username);
            if (user.isVerified()) {
                return user;
            } else {
                return null;
            }
        }
        return null;
    }

    @Override
    public boolean registerUser(String username, String name, String password){

        Optional<ApplicationUser> user = userRepository.findByUsername(username);

        if (user.isPresent()){
            return false;
        }

        String encodedPassword = passwordEncoder.encode(password);
        RoleModel userRoleModel = roleRepository.findByAuthority("USER").get();

        Set<RoleModel> authorities = new HashSet<>();

        authorities.add(userRoleModel);

        String token = tokenService.generateVerificationToken();
        emailService.sendVerificationEmail(username,token);
        ApplicationUser createdUser = new ApplicationUser(0, username,name,encodedPassword,authorities,false,token);

        userRepository.save(createdUser);

        return true;
    }

    @Override
    public boolean validateUser(String token) {
        ApplicationUser user = userRepository.getApplicationUserByToken(token);
        if (user != null){
            user.setVerified(true);
            user.setToken("");
            userRepository.save(user);
            Authentication authentication = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());

            //Set authenticated status for springboot.
            SecurityContextHolder.getContext().setAuthentication(authentication);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean changePassword(String email, String password, String resetToken) {
        ApplicationUser user = userRepository.getApplicationUserByUsername(email);
        if (user != null && user.getToken().equals(resetToken)) {
           String encondedPassword = passwordEncoder.encode(password);
           user.setPassword(encondedPassword);
           user.setToken("");
           userRepository.save(user);
           return true;
        }
        return false;
    }

    public ApplicationUser getUser() {
        return user;
    }
}
