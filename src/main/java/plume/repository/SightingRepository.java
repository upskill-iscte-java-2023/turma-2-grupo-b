package plume.repository;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import org.springframework.data.jpa.repository.JpaRepository;
import plume.models.SightingModel;

import java.util.List;

public interface SightingRepository extends JpaRepository<SightingModel, Integer> {
    @Override
    List<SightingModel> findAll();

}
