package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.beans.Favoris;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FavorisRepository extends CrudRepository<Favoris,Integer> {
    List<Favoris> findByClient(Client client);
    Favoris findByClientAndAnimal(Client client, Animal animal);
}
