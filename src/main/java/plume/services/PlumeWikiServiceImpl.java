package plume.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import plume.entities.PlumeWikiModel;
import plume.repository.WikiRepository;

import java.util.List;

@Service
public class PlumeWikiServiceImpl implements PlumeWikiService {


    @Autowired
    public WikiRepository wikiRepository;

    @Override
    public List<PlumeWikiModel> getAllBirdData() {
        return wikiRepository.findAll();
    }
}
