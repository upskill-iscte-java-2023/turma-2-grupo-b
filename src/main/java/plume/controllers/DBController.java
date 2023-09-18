package plume.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import plume.entities.PlumeWikiModel;
import plume.entities.SightingModel;
import plume.repository.WikiRepository;
import plume.services.DataService;
import plume.services.PlumeWikiService;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin("*")
public class DBController {
    @Autowired
    private DataService dataService;

    @GetMapping("/data")
    public List<SightingModel> getData(){
        List<SightingModel> data = dataService.getAllData();
        return data;
    }



}
