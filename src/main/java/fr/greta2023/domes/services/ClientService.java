package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Client;

public interface ClientService {

    public boolean creerClient(Client client);

    public Client connexionClient(Client client);
}

