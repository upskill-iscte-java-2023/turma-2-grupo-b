package plume.services;

import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;
import plume.entities.PendingResetEntity;

@Service
public class PendingResetServiceimpl implements PendingResetService {
    private String username;
    private String token;

    @Override
    public void setPendingUser(String username, String token) {
        PendingResetEntity.setToken(token);
        PendingResetEntity.setUsername(username);
    }

    @Override
    public String getPendingUser() {
        return username;
    }

    @Override
    public String getPendingUserToken() {
        return token;
    }
}
