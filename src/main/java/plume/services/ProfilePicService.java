package plume.services;

import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;

@Service
public interface ProfilePicService {


    public void storeProfilePic(String url, ApplicationUser user);
}
