package plume.entities;

public class PendingResetEntity {
    private static String username;
    private static String token;

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        PendingResetEntity.username = username;
    }

    public static String getToken() {
        return token;
    }

    public static void setToken(String token) {
        PendingResetEntity.token = token;
    }
}
