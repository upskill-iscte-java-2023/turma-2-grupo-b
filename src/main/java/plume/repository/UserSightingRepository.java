package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.entities.ApplicationUser;
import plume.entities.UserSightingModel;

import java.util.List;

@Repository
public interface UserSightingRepository extends JpaRepository<UserSightingModel, Integer> {
    List<UserSightingModel> findAllByUser(ApplicationUser user);
}
