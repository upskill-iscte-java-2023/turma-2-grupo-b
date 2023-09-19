package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.entities.ApplicationUser;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<ApplicationUser, Integer> {
    Optional<ApplicationUser> findByUsername(String username);
    ApplicationUser getApplicationUserByUsername(String username);

    ApplicationUser getApplicationUserByToken(String token);
}

