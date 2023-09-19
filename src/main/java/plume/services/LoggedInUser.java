package plume.services;

import plume.entities.ApplicationUser;
import plume.entities.LoggedInUserEntity;

public interface LoggedInUser {

    void setLoggedInUser(ApplicationUser user);

    LoggedInUserEntity getUser();
}
