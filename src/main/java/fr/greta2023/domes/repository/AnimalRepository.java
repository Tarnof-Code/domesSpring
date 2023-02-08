package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Animal;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AnimalRepository extends CrudRepository<Animal, Integer> {
    Animal findById(int id);
}
