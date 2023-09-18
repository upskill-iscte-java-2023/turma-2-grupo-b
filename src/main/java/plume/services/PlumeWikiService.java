package plume.services;

import org.springframework.stereotype.Service;
import plume.entities.PlumeWikiModel;

import java.util.List;

@Service
public interface PlumeWikiService {

    List<PlumeWikiModel> getAllBirdData();
}
