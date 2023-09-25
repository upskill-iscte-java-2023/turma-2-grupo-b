package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import plume.entities.ApplicationUser;
import plume.entities.SightingModel;
import plume.repository.SightingRepository;

import java.util.List;

@Service
public class DataService {

    @Autowired
    SightingRepository sightingRepository;

    public List<SightingModel> getAllData(){
        List<SightingModel> data = sightingRepository.findAll();
        return data;
    }

    public void storeSighting(String url, String description, LocalDate observerdOn, String lat, String lng, ApplicationUser user) {

        // Create a new SightingModel
        SightingModel sightingModel = new SightingModel();
        sightingModel.setImage_url(url);
        sightingModel.setDescription(description);
        sightingModel.setObservedOn(observerdOn);
        sightingModel.setLatitude(lat);
        sightingModel.setLongitude(lng);
        sightingModel.setUser(user);

        sightingRepository.save(sightingModel);
    }

    public List<SightingModel> getSightingsByUser(ApplicationUser user){
        return sightingRepository.findByUser(user);
    }

}
