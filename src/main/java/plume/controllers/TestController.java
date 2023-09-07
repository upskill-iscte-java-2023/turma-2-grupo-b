package plume.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TestController {

    @GetMapping(value="/")
    public ModelAndView index(){
        return new ModelAndView("index");
    }

    @GetMapping(value="/contact")
    public ModelAndView contact(){
        return new ModelAndView("contact");
    }

    @GetMapping(value="/error")
    public ModelAndView error(){
        return new ModelAndView("404");
    }

    @GetMapping(value="/log-in")
    public ModelAndView login(){
        return new ModelAndView("log-in");
    }

    @GetMapping(value="/our-team")
    public ModelAndView ourteam(){
        return new ModelAndView("our-team");
    }
    @GetMapping(value="/privacy-policy")
    public ModelAndView pp(){
        return new ModelAndView("privacy-policy");
    }

    @GetMapping(value="/sign-up")
    public ModelAndView signup(){
        return new ModelAndView("sign-up");
    }

    @GetMapping(value="/subscription")
    public ModelAndView subscription(){
        return new ModelAndView("subscription");
    }

    @GetMapping(value="terms-conditions")
    public ModelAndView conditions(){
        return new ModelAndView("terms-conditions");
    }

    @GetMapping(value="account-settings")
    public ModelAndView accSettings(){
        return new ModelAndView("account-settings");
    }

    @GetMapping(value="challenges")
    public ModelAndView challenges(){
        return new ModelAndView("challenges");
    }

    @GetMapping(value="my-observations")
    public ModelAndView myObservations(){
        return new ModelAndView("my-observations");
    }

    @GetMapping(value="payments")
    public ModelAndView payments(){
        return new ModelAndView("payments");
    }

    @GetMapping(value="plume-wiki")
    public ModelAndView wiki(){
        return new ModelAndView("plume-wiki");
    }

    @GetMapping(value="dashboard")
    public ModelAndView profileDashboard(){
        return new ModelAndView("profile-dashboard");
    }
    @GetMapping(value="subscriptions")
    public ModelAndView profilesubscriptions(){
        return new ModelAndView("subscriptions");
    }

    @GetMapping(value="404")
    public ModelAndView notFound(){
        return new ModelAndView("404");
    }

}
