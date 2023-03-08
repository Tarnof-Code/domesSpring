package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.beans.Panier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PanierRepository extends CrudRepository<Panier, Integer> {
    List<Panier> findByClient(Client client);
}
