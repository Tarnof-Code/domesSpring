package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.beans.ArticlePanier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PanierRepository extends CrudRepository<ArticlePanier, Integer> {
    List<ArticlePanier> findByClient(Client client);

    ArticlePanier findByClientAndAnimal(Client client, Animal animal);
}
