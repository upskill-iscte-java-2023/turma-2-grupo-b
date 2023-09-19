package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import plume.entities.ApplicationUser;
import plume.repository.UserRepository;
import plume.services.AuthService;
import plume.services.EmailService;

import java.util.Optional;

@RestController
@RequestMapping("/index")
@CrossOrigin("*")
public class IndexController {

    @Autowired
    EmailService emailService;

    @Autowired
    AuthService authService;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/")
    public ModelAndView indexController() {
        return new ModelAndView("index");
    }

    @GetMapping("/our-team")
    public ModelAndView ourTeamController() {
        return new ModelAndView("our-team");
    }

    @GetMapping("/subscription")
    public ModelAndView subscriptionController() {
        return new ModelAndView("subscription");
    }

    @GetMapping("/contact")
    public ModelAndView contactController() {
        return new ModelAndView("contact");
    }

    @GetMapping("/privacy-policy")
    public ModelAndView ppController() {
        return new ModelAndView("privacy-policy");
    }
    @GetMapping("/terms")
    public ModelAndView termsConditionsController() {
        return new ModelAndView("terms-conditions");
    }
    @GetMapping("/reset-password")
    public ModelAndView resetPassword() {return new ModelAndView("reset-password");}

    @PostMapping("/sendreset")
    public RedirectView confirmResetEmail(@RequestParam("email") String email){
        Optional<ApplicationUser> user = userRepository.findByUsername(email);
        if (user.isPresent()){
            emailService.sendResetPasswordEmail(email);
            return new RedirectView("/index/reset-password?success=true");
        }
        return new RedirectView("/index/reset-password?error=true");
    }
    

    @PostMapping("/resetpass")
    public RedirectView confirmPassReset(@RequestParam("token") String resetToken,
                                         @RequestParam("email") String email,
                                         @RequestParam("password") String password){
        boolean success = authService.changePassword(email,password,resetToken);
        if (success){
            return new RedirectView("/index/reset-password?reset=true&resetsuccess=true");
        }
        return new RedirectView("/index/reset-password?reset=true&resetsucess=false");
    }
}