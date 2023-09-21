package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Animal;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnimalRepository extends CrudRepository<Animal, Integer> {
    Animal findById(int id);

   /* @Query("select a from Animal a where a.categorieId = id")*/
    public List<Animal> findByCategorieId(int categorieId);

    @Query(value = "SELECT * FROM Animal ORDER BY RAND() LIMIT 6",nativeQuery = true)
    List<Animal> findRandomList();


}
