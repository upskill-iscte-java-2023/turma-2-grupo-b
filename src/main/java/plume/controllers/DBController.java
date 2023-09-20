package plume.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import plume.entities.SightingModel;
import plume.services.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin("*")
public class DBController {
    @Autowired
    private DataService dataService;

    @Autowired
    private AuthService authService;

    @Autowired
    private GCPStorageService gcpStorageService;

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

        String url = gcpStorageService.uploadFileToBucket(file);
        dataService.storeSighting(url, description, observedOn, lat, lng, authService.getUser());
    }

}
