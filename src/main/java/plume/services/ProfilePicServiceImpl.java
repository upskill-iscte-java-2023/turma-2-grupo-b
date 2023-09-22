package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;
import plume.repository.UserRepository;

@Service
public class ProfilePicServiceImpl implements ProfilePicService {

    @Autowired
    private UserRepository userRepository;


    @Override
    public void storeProfilePic(String url, ApplicationUser user) {
        user.setProfilePicPath(url);
        userRepository.save(user);
    }
}