package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import plume.models.PlumeWiki;

import java.util.List;

public interface WikiRepository extends JpaRepository<PlumeWiki, Integer> {

    @Override
    List<PlumeWiki> findAll();
}
