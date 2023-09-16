package plume.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plume.models.RoleModel;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<RoleModel, Integer>{
    Optional<RoleModel> findByAuthority(String authority);
}
