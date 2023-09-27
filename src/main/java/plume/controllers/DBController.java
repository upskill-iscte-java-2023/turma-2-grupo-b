package plume.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;
import plume.entities.SightingModel;
import plume.services.*;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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

    @Autowired
    private ProfilePicService profilePicService;

    @GetMapping("/data")
    public List<SightingModel> getData(){
        List<SightingModel> data = dataService.getAllData();
        return data;
    }

    @PostMapping("/upload")
    public void uploadFile(@RequestParam("file") MultipartFile file,
                           @RequestParam("description") String description,
                           @RequestParam("simplename") String simplename,
                           @RequestParam("observedOn") String date,
                           @RequestParam("latitude") String lat,
                           @RequestParam("longitude") String lng) throws IOException {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate observedOn = LocalDate.parse(date,formatter);
        String url = gcpStorageService.uploadFileToBucket(file);
        dataService.storeSighting(url, description, simplename, observedOn, lat, lng, authService.getCurrentUser());
    }



    @PostMapping("/upload-photo")
    public RedirectView uploadPhotoController(@RequestParam("profile-pic-path") MultipartFile file) throws IOException {
        String url = gcpStorageService.uploadFileToBucket(file);
        profilePicService.storeProfilePic(url, authService.getCurrentUser());
        return new RedirectView("/user/settings?success");
    }

}
