package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import plume.models.ApplicationUser;
import plume.models.LoginResponseDTO;
import plume.models.RegistrationDTO;
import plume.services.AuthenticationService;

@RestController
@RequestMapping("/auth")
@CrossOrigin("*")
public class AuthenticationController {

    @Autowired
    private AuthenticationService authenticationService;

    @GetMapping("/login")
    public ModelAndView loginPage(){
        return new ModelAndView("login");
    }

    @PostMapping("/register")
    public ApplicationUser registerUser(@RequestParam("Email") String email,
                                        @RequestParam("Name") String name,
                                        @RequestParam("Password") String password){
        return authenticationService.registerUser(email,name,password);
        // add name  and email ??
    }


    @PostMapping("/login-attempt")
    public LoginResponseDTO loginUser(@RequestParam("Email") String email,
                                      @RequestParam("Password") String password){
        return  authenticationService.loginUser(email,password);

        //TODO logic if successfull.
    }
}
