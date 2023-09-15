package plume;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.SpringApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;
import plume.models.ApplicationUser;
import plume.models.Role;
import plume.repository.RoleRepository;
import plume.repository.UserRepository;

import java.util.HashSet;
import java.util.Set;

@SpringBootApplication
public class Main {

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}