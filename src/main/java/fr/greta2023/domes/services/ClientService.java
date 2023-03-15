package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Client;

import javax.servlet.http.HttpSession;

public interface ClientService {

    public boolean verifEmail(Client client);
    public Client creerClient(Client client);

    public Client connexionClient(Client client);

    public  Client modifierClient(Client client, HttpSession session);

}

