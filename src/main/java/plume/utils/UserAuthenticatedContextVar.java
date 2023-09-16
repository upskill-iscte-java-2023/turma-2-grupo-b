package plume.utils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class UserAuthenticatedContextVar {
    private static boolean authenticated;

    public static boolean isAuthenticated() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.isAuthenticated();
    }

    public static void setAuthenticated(boolean authenticated) {
        UserAuthenticatedContextVar.authenticated = authenticated;
    }
}
