package plume.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/index")
@CrossOrigin("*")
public class IndexController {

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
    @GetMapping("/login")
    public ModelAndView loginController() {
        return new ModelAndView("login");
    }
    @GetMapping("/signup")
    public ModelAndView signupController() {
        return new ModelAndView("sign-up");
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
}