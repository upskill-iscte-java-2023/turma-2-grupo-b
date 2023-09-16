package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import plume.services.AuthService;
import plume.utils.UserAuthenticatedContextVar;

@RestController
@RequestMapping("/auth")
@CrossOrigin("*")
public class AuthenticationController {

    @Autowired
    private AuthService authenticationService;

    @GetMapping("/login")
    public ModelAndView loginPage(){
        return new ModelAndView("login");
    }

    @GetMapping("/signup")
    public ModelAndView signupPage(){
        return new ModelAndView("sign-up");
    }

    @PostMapping("/register")
    public RedirectView registerUser(@RequestParam("Email") String email,
                                        @RequestParam("Name") String name,
                                        @RequestParam("Password") String password){
        authenticationService.registerUser(email,name,password);
        return new RedirectView("/index/subscription");
    }

}
