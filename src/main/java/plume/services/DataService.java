package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;
import plume.entities.SightingModel;
import plume.entities.UserSightingEntity;
import plume.repository.SightingRepository;
import plume.repository.UserSightingRepository;

import java.util.List;

@Service
public class DataService {

    @Autowired
    SightingRepository sightingRepository;

    @Autowired
    UserSightingRepository userSightingRepository;

    public List<SightingModel> getAllData(){
        List<SightingModel> data = sightingRepository.findAll();
        return data;
    }

    public void storeSighting(String url, String description, String observerdOn, String lat, String lng, ApplicationUser user){


        SightingModel sightingModel = new SightingModel();
        sightingModel.setImage_url(url);
        sightingModel.setDescription(description);
        sightingModel.setObserved_on(observerdOn);
        sightingModel.setLatitude(lat);
        sightingModel.setLongitude(lng);

        sightingRepository.save(sightingModel);

        UserSightingEntity userSightingEntity = new UserSightingEntity();

        userSightingEntity.setUser(user);
        userSightingEntity.setSightings(sightingModel);

        userSightingRepository.save(userSightingEntity);

    }

}
