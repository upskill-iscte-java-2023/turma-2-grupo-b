package plume.services;

import plume.Exceptions.InvalidLoginException;
import plume.Exceptions.NotVerifiedException;
import plume.entities.ApplicationUser;

public interface AuthService {
    ApplicationUser validateLogin(String username, String password) throws InvalidLoginException, NotVerifiedException;

    boolean registerUser(String username, String name, String password);

    boolean validateUser(String token);

    boolean changePassword(String email,String password, String resetToken);

    ApplicationUser getCurrentUser();
}
