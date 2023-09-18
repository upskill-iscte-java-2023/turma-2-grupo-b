package plume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import plume.entities.PlumeWikiModel;
import plume.services.PlumeWikiService;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin("*")
public class PlumeWikiController {


    @Autowired
    PlumeWikiService plumeWikiService;

    @GetMapping("/wikidata")
    public List<PlumeWikiModel> getBirdData() {
        return plumeWikiService.getAllBirdData();
    }

}
