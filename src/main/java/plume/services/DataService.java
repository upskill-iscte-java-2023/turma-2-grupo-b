package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import plume.models.PlumeWikiModel;
import plume.models.SightingModel;
import plume.repository.SightingRepository;
import plume.repository.WikiRepository;

import java.util.List;

@Service
public class DataService {

    @Autowired
    SightingRepository sightingRepository;

    public List<SightingModel> getAllData(){
        List<SightingModel> data = sightingRepository.findAll();
        return data;
    }

    @Autowired
    WikiRepository wikiRepository;

    public List<PlumeWikiModel> getAllBirdData(){
        List<PlumeWikiModel> birdsData = wikiRepository.findAll();
        return birdsData;
    }



}
