package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import plume.models.PlumeWiki;
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

    public List<PlumeWiki> getAllBirdData(){
        List<PlumeWiki> birdsData = wikiRepository.findAll();
        return birdsData;
    }



}
