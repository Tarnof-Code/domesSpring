package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientServiceImpl implements ClientService {
    private ClientRepository clientRepository;

    @Autowired
    public ClientServiceImpl(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }


    public boolean creerClient(Client client){

        Client isClientExist = clientRepository.findByEmail(client.getEmail()); // IL existe

        if(isClientExist !=null){

            return false;
        }
        clientRepository.save(client);
        return true;
    }




}
