package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Client;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdresseRepository extends CrudRepository<Adresse,Integer> {
    List<Adresse>  findByClient(Client client);
}
