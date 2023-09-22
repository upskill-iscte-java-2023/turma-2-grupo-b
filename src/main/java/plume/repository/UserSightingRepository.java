package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.entities.ApplicationUser;
import plume.entities.UserSightingEntity;

import java.util.List;

@Repository
public interface UserSightingRepository extends JpaRepository<UserSightingEntity, Integer> {
    List<UserSightingEntity> findAllByUser(ApplicationUser user);
}
