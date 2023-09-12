package plume.models;

// DTO - Data Transfer Object
public class RegistrationDTO {
    private String email;
    private String password;

    public RegistrationDTO(){
        super();
    }

    public RegistrationDTO(String email, String password){
        super();
        this.email = email;
        this.password = password;
    }

    public String getEmail(){
        return this.email;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getPassword(){
        return this.password;
    }

    public void setPassword(String password){
        this.password = password;
    }

    public String toString(){
        return "Registration info: username: " + this.email + " password: " + this.password;
    }
}
