package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import plume.entities.LoggedInUserEntity;
import plume.entities.SightingModel;
import plume.services.*;

import javax.xml.crypto.Data;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/user")
@CrossOrigin("*")
public class UserController {

    @Autowired
    PlumeWikiService plumeWikiService;

    @Autowired
    DataService dataService;

    @Autowired
    AuthService authService;

    @GetMapping("/dashboard")
    public ModelAndView dashboardController(){
        ModelAndView model = new ModelAndView("profile-dashboard");
        model.addObject("user",authService.getCurrentUser());

        List<SightingModel> userSightings = dataService.getLatestSightingsByUser(authService.getCurrentUser());

        if (userSightings.isEmpty()) {
            return model;
        } else {
            model.addObject("sightings", userSightings);
            return model;
        }
    }

    @GetMapping("/map")
    public ModelAndView mapController(){
        ModelAndView model = new ModelAndView("map");
        model.addObject("user",authService.getCurrentUser());
        return model;
    }

    @GetMapping("/my-observations")
    public ModelAndView myObservationsController(){
        ModelAndView model = new ModelAndView("my-observations");
        model.addObject("user",authService.getCurrentUser());

        List<SightingModel> userSightings = dataService.getLatestSightingsByUser(authService.getCurrentUser());

        if (!userSightings.isEmpty()){
            model.addObject("sightings",userSightings);
            return model;
        }
        return model;
    }

    @GetMapping("/my-subscriptions")
    public ModelAndView mysubscriptionsController(){
        ModelAndView model = new ModelAndView("my-subscriptions");
        model.addObject("user",authService.getCurrentUser());
        return model;
    }

    @GetMapping("/payments")
    public ModelAndView paymentsController(){
        ModelAndView model = new ModelAndView("payments");
        model.addObject("user",authService.getCurrentUser());
        return model;
    }

    @GetMapping("/plume-wiki")
    public ModelAndView plumeWikiController(){
        ModelAndView model = new ModelAndView("plume-wiki");
        model.addObject("user",authService.getCurrentUser());
        model.addObject("plume_wiki", plumeWikiService.getAllBirdData());
        return model;
    }

    @GetMapping("/settings")
    public ModelAndView settingsController(){
        ModelAndView model = new ModelAndView("account-settings");
        model.addObject("user",authService.getCurrentUser());
        return model;
    }

    @GetMapping("/challenges")
    public ModelAndView challengesController(){
        ModelAndView model = new ModelAndView("challenges");
        model.addObject("user",authService.getCurrentUser());
        return model;
    }




}