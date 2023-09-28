package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import plume.entities.ApplicationUser;
import plume.entities.LoggedInUserEntity;
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
        ModelAndView model = new ModelAndView("index");
        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user",authService.getCurrentUser());
        }
        return model;
    }

    @GetMapping("/our-team")
    public ModelAndView ourTeamController() {

        ModelAndView model = new ModelAndView("our-team");

        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user",authService.getCurrentUser());
        }
        return model;
    }

    @GetMapping("/subscription")
    public ModelAndView subscriptionController() {

        ModelAndView model = new ModelAndView("subscription");

        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user",authService.getCurrentUser());
        }
        return model;
    }

    @GetMapping("/contact")
    public ModelAndView contactController() {

        ModelAndView model = new ModelAndView("contact");

        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user",authService.getCurrentUser());
        }
        return model;
    }

    @GetMapping("/privacy-policy")
    public ModelAndView ppController() {

        ModelAndView model = new ModelAndView("privacy-policy");

        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user",authService.getCurrentUser());
        }
        return model;
    }
    @GetMapping("/terms")
    public ModelAndView termsConditionsController() {

        ModelAndView model = new ModelAndView("terms-conditions");

        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user",authService.getCurrentUser());
        }
        return model;
    }
    @GetMapping("/reset-password")
    public ModelAndView resetPassword() {

        ModelAndView model = new ModelAndView("reset-password");
        ApplicationUser user = authService.getCurrentUser();
        if (user != null) {
            model.addObject("user", authService.getCurrentUser());
        }
        return model;
    }

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

    @PostMapping("/requesthelp")
    public RedirectView sendHelpEmail(@RequestParam("First-Name") String fName,
                                      @RequestParam("Last-Name") String lName,
                                      @RequestParam("Email") String email,
                                      @RequestParam("Message") String message){
        String name = fName + " " + lName;

        boolean success = emailService.sendHelpEmail(name,email,message);

        if (success){
            return new RedirectView("/index/contact?success=true");
        } else {
            return new RedirectView(("/index/contact?error=true"));
        }
    }
}