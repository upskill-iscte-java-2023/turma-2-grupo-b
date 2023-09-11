package plume.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/index")
@CrossOrigin("*")
public class IndexController {

    @GetMapping("/")
    public String helloUserController(){
        return "Olá Quim Barreiros";
    }

}