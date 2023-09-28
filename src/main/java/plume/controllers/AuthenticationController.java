package plume.controllers;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import plume.Exceptions.InvalidLoginException;
import plume.Exceptions.NotVerifiedException;
import plume.entities.ApplicationUser;
import plume.repository.UserRepository;
import plume.services.AuthService;
import plume.services.EmailService;
import plume.services.TokenService;

import javax.mail.MessagingException;


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

    UserRepository userRepository;

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
        ApplicationUser user = new ApplicationUser();
        try {
             user = authenticationService.validateLogin(email, password);

        } catch (InvalidLoginException e){

            return new RedirectView("/auth/login?error=true");
        } catch (NotVerifiedException e) {

            return new RedirectView("/auth/login?notverified=true");
        }

        if (user != null && user.isVerified()) {
            //Create auth token
            Authentication authentication = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());

            //Set authenticated status for springboot.
            SecurityContextHolder.getContext().setAuthentication(authentication);

            //Redirect view.
            return new RedirectView("/user/dashboard");
        }
        //Return user to error page on bad login attempt.
        return new RedirectView("/auth/login?error=true");
    }

}
