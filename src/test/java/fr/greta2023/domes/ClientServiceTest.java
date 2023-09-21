package fr.greta2023.domes;

import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.ClientRepository;
import fr.greta2023.domes.services.ClientService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;
import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
@Transactional
public class ClientServiceTest {
    @Autowired
    private ClientService clientService;

    @Autowired
    private ClientRepository clientRepository;

    @Test
    public void testConnexionClient_withValidCredentials_shouldReturnClient() {
        // Given
        Client client = new Client();
        client.setEmail("test@test.com");
        client.setMotDePasse("test");

        // When
        Client clientConnecte = clientService.connexionClient(client);

        // Then
        assertThat(clientConnecte).isNotNull();
        assertThat(clientConnecte.getEmail()).isEqualTo(client.getEmail());
        assertThat(clientConnecte.getMotDePasse()).isEqualTo(client.getMotDePasse());
    }
    @Test
    public void testConnexionClient_withInvalidCredentials_shouldReturnNull() {
        // Given
        Client client = new Client();
        client.setEmail("test@test.com");
        client.setMotDePasse("test");

        Client invalidClient = new Client();
        invalidClient.setEmail("test@test.com");
        invalidClient.setMotDePasse("wrongpassword");

        // When
        Client clientConnecte = clientService.connexionClient(invalidClient);

        // Then
        assertThat(clientConnecte).isNull();
    }

}

