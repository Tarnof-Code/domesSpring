package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class ClientServiceImpl implements ClientService {
    private ClientRepository clientRepository;

    @Autowired
    public ClientServiceImpl(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }



    @Override
    public boolean verifEmail(Client client){
        Client isClientExist = clientRepository.findByEmail(client.getEmail());
        if(isClientExist != null){
            return true;
        }
        return false;
    }

    @Override
    public Client creerClient(Client client){
        return  clientRepository.save(client);
    }

    @Override
    public Client connexionClient(Client client) {
        Client clientConnecte = clientRepository.findByEmailAndMotDePasse(client.getEmail(), client.getMotDePasse());
        if(clientConnecte !=null){
            return clientConnecte;
        }
        return null;
    }

    @Override
    public Client modifierClient(Client client, HttpSession session) {
        Client clientAModifier = (Client) session.getAttribute("clientConnecte");
        System.out.println("Client à modifier "+ clientAModifier);

        clientAModifier.setNom(client.getNom());
        clientAModifier.setPrenom(client.getPrenom());
        clientAModifier.setTelephone(client.getTelephone());
        clientAModifier.setMotDePasse(client.getMotDePasse());

        Client clientModifie = clientRepository.save(clientAModifier);
        System.out.println("Modification faites "+ clientModifie);
        return clientModifie;
    }


}
