package plume.services;

import plume.models.ApplicationUser;

public interface AuthService {
    ApplicationUser validateLogin(String username, String password);

    ApplicationUser registerUser(String username, String name, String password);
}
