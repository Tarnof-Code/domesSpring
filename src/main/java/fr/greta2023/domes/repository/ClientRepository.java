package fr.greta2023.domes.repository;

import fr.greta2023.domes.beans.Client;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepository extends CrudRepository<Client, Integer> {
    Client findByEmail(String email);


    Client findByEmailAndMotDePasse(String email, String motDePasse);
}
