package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.models.PlumeWiki;

import javax.persistence.Entity;
import java.util.List;

@Repository
public interface WikiRepository extends JpaRepository<PlumeWiki, Integer> {

    @Override
    List<PlumeWiki> findAll();
}

 */
