package plume.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/error")
@CrossOrigin("*")
public class ErrorController {
    @GetMapping("/404")
    public ModelAndView errorController() {
        return new ModelAndView("404");
    }
}
