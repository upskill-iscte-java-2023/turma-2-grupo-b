package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.entities.ApplicationUser;
import plume.entities.SightingModel;

import java.util.List;


@Repository
public interface SightingRepository extends JpaRepository<SightingModel, Integer> {
    @Override
    List<SightingModel> findAll();

    List<SightingModel> findByUser(ApplicationUser user);

}
