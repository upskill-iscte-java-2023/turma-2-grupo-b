package plume.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import plume.entities.PlumeWikiModel;
import plume.entities.SightingModel;
import plume.repository.WikiRepository;
import plume.services.AuthServiceImpl;
import plume.services.DataService;
import plume.services.PlumeWikiService;

import java.awt.datatransfer.FlavorTable;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin("*")
public class DBController {
    @Autowired
    private DataService dataService;

    @Autowired
    private AuthServiceImpl authService;

    @GetMapping("/data")
    public List<SightingModel> getData(){
        List<SightingModel> data = dataService.getAllData();
        return data;
    }

    @PostMapping("/upload")
    public void uploadFile(@RequestParam("file") MultipartFile file,
                           @RequestParam("description") String description,
                           @RequestParam("observedOn") String observedOn,
                           @RequestParam("latitude") String lat,
                           @RequestParam("longitude") String lng) throws IOException {

        byte[] fileBytes = file.getBytes();

        dataService.storeSighting(fileBytes, description, observedOn, lat, lng, authService.getUser());
    }

}
