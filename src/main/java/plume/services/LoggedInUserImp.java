package plume.services;

import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;
import plume.entities.LoggedInUserEntity;

@Service
public class LoggedInUserImp implements LoggedInUser {

    private LoggedInUserEntity user;

    @Override
    public void setLoggedInUser(ApplicationUser user) {
        LoggedInUserEntity.setUser(user);
    }

    @Override
    public LoggedInUserEntity getUser() {
        return user;
    }
}
