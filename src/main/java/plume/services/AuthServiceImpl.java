package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
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

        userRepository.save(new ApplicationUser(0, username, name, encodedPassword, authorities));
        return true;
    }

    public ApplicationUser getUser() {
        return user;
    }
}
