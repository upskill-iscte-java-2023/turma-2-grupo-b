package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import plume.entities.LoggedInUserEntity;
import plume.services.PlumeWikiService;
import plume.services.ProfilePicService;
import plume.services.UserService;

@RestController
@RequestMapping("/user")
@CrossOrigin("*")
public class UserController {

    @Autowired
    PlumeWikiService plumeWikiService;

    @GetMapping("/dashboard")
    public ModelAndView dashboardController(){
        ModelAndView model = new ModelAndView("profile-dashboard");
        model.addObject(LoggedInUserEntity.getUser());
        return model;
    }

    @GetMapping("/map")
    public ModelAndView mapController(){
        return new ModelAndView("map");
    }

    @GetMapping("/my-observations")
    public ModelAndView myObservationsController(){
        return new ModelAndView("my-observations");
    }

    @GetMapping("/my-subscriptions")
    public ModelAndView mysubscriptionsController(){
        return new ModelAndView("my-subscriptions");
    }

    @GetMapping("/payments")
    public ModelAndView paymentsController(){
        return new ModelAndView("payments");
    }

    @GetMapping("/plume-wiki")
    public ModelAndView plumeWikiController(){
        ModelAndView mav = new ModelAndView("plume-wiki");
        mav.addObject("plume_wiki", plumeWikiService.getAllBirdData());
        return mav;
    }

    @GetMapping("/settings")
    public ModelAndView settingsController(){
        return new ModelAndView("account-settings");
    }

    @GetMapping("/challenges")
    public ModelAndView challengesController(){
        return new ModelAndView("challenges");
    }




}