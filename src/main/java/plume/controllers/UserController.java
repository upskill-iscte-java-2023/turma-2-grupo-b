package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import plume.services.PlumeWikiService;

@RestController
@RequestMapping("/user")
@CrossOrigin("*")
public class UserController {

    @Autowired
    PlumeWikiService plumeWikiService;

    @GetMapping("/dashboard")
    public ModelAndView dashboardController(){
        return new ModelAndView("profile-dashboard");
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