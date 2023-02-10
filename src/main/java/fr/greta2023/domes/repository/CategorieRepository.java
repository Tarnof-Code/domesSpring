package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Categorie;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategorieRepository extends CrudRepository<Categorie,Integer> {

}
