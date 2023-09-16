package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.models.PlumeWikiModel;

import java.util.List;

@Repository
public interface WikiRepository extends JpaRepository<PlumeWikiModel, Integer> {

    @Override
    List<PlumeWikiModel> findAll();
}


