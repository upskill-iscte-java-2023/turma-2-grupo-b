package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import plume.entities.ApplicationUser;
import plume.entities.SightingModel;
import plume.repository.SightingRepository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class DataService {

    @Autowired
    SightingRepository sightingRepository;

    public List<SightingModel> getAllData(){
        List<SightingModel> data = sightingRepository.findAll();
        return data;
    }

    public void storeSighting(String url, String description, String simplename, LocalDate observerdOn, String lat, String lng, ApplicationUser user) {

        // Create a new SightingModel
        SightingModel sightingModel = new SightingModel();
        sightingModel.setImage_url(url);
        sightingModel.setDescription(description);
        sightingModel.setCommon_name(simplename);
        sightingModel.setObservedOn(observerdOn);
        sightingModel.setLatitude(lat);
        sightingModel.setLongitude(lng);
        sightingModel.setUser(user);

        sightingRepository.save(sightingModel);
    }

    public List<SightingModel> getLatestSightingsByUser(ApplicationUser user){
        List<SightingModel> sightings = sightingRepository.findByUser(user);

        if (sightings.isEmpty()) {
            return Collections.emptyList();
        } else {

            List<SightingModel> sortedSightings = sightings.stream()
                    .sorted(Comparator.comparing(SightingModel::getObservedOn).reversed())
                    .collect(Collectors.toList());

            // Determine the number of latest sightings to retrieve (up to 3)
            int numLatestSightings = Math.min(sightings.size(), 3);

            // Retrieve the latest sightings using subList
            List<SightingModel> latestSightings = sortedSightings.subList(0, numLatestSightings);
            return latestSightings;
        }
    }

}
