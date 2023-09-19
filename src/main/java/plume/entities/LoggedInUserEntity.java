package plume.entities;

public class LoggedInUserEntity {

    private static String name;

    public static void setName(String name) {
        LoggedInUserEntity.name = name;
    }

    public static String getName() {
        return name;
    }


}
