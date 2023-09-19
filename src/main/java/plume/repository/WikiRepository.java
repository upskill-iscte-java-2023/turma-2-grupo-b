package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.entities.PlumeWikiModel;

import java.util.List;

@Repository
public interface WikiRepository extends JpaRepository<PlumeWikiModel, Integer> {

    List<PlumeWikiModel> findAll();


}


