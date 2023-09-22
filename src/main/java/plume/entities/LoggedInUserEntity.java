package plume.entities;

public class LoggedInUserEntity {

    private static ApplicationUser user;


    public static ApplicationUser getUser() {
        return user;
    }

    public static void setUser(ApplicationUser user) {
        LoggedInUserEntity.user = user;
    }

    public static boolean isLoggedIn(){
        if (user == null){
            return false;
        } else {
            return true;
        }
    }


}
