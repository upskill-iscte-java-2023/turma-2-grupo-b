package plume.services;

public interface PendingResetService {

    void setPendingUser(String username, String token);

    String getPendingUser();

    String getPendingUserToken();

}
