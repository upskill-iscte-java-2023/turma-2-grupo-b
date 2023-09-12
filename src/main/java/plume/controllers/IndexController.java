package plume.controllers;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import java.util.Map;

@RestController
@RequestMapping("/index")
@CrossOrigin("*")
public class IndexController {

    @GetMapping("/")
    public ModelAndView indexController() {
        return new ModelAndView("index");
    }

}