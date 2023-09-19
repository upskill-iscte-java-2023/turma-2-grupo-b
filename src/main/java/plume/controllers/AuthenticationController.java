package plume.controllers;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import plume.entities.ApplicationUser;
import plume.repository.UserRepository;
import plume.services.AuthService;
import plume.services.EmailService;
import plume.services.TokenService;
import plume.utils.UserAuthenticatedContextVar;

import javax.mail.MessagingException;
import java.util.Optional;


@RestController
@RequestMapping("/auth")
@CrossOrigin("*")
public class AuthenticationController {

    @Autowired
    private AuthService authenticationService;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private EmailService emailService;

    private UserRepository userRepository;

    private String token;

    private String pendingVerificationUser;

    @GetMapping("/login")
    public ModelAndView loginPage() {
        return new ModelAndView("login");
    }

    @GetMapping("/signup")
    public ModelAndView signupPage() {
        return new ModelAndView("sign-up");
    }

    @PostMapping("/register")
    public RedirectView registerUser(@Valid @RequestParam("Email") String email,
                                     @RequestParam("Name") String name,
                                     @Valid @RequestParam("Password") String password) throws MessagingException {

        boolean success = authenticationService.registerUser(email, name, password);
        if (success) {
            return new RedirectView("/auth/signup?success=true");
        } else {
            return new RedirectView("/auth/signup?error=true");
        }
    }


    @PostMapping("/verification")
    public RedirectView verifyUser(@RequestParam("verification-text") String token) {
        boolean validated = authenticationService.validateUser(token);
        if (validated) {
            return new RedirectView("/user/dashboard");
        } else {
            return new RedirectView("/auth/signup?success=true&verification=false");
        }
    }

    @PostMapping("/login-attempt")
    public RedirectView customLogin(@Valid @RequestParam("username") String email,
                                    @Valid @RequestParam("password") String password) {
        ApplicationUser user = authenticationService.validateLogin(email, password);
        if (user != null && user.isVerified()) {
            //Create auth token
            Authentication authentication = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());

            //Set authenticated status for springboot.
            SecurityContextHolder.getContext().setAuthentication(authentication);

            //Redirect view.
            return new RedirectView("/user/dashboard");
        } else if (user != null && !user.isVerified()) {
            return new RedirectView("auth/login?validationfail=true");
        }
        //Return user to error page on bad login attempt.
        return new RedirectView("/auth/login?error=true");
    }

    @PostMapping("/sendReset")
    public RedirectView resetPassword(@Valid @RequestParam("username") String email) {
        Optional<ApplicationUser> user = userRepository.findByUsername(email);

        String token = tokenService.generateVerificationToken();

        if (user.isPresent()) {
            boolean emailSuccess = emailService.sendResetPasswordEmail(email, token);
            if (emailSuccess) {
                return new RedirectView("/auth/sendReset?success=true&" + token);
            }
        }
        return new RedirectView("/auth/sendReset?error=true");
    }

}
