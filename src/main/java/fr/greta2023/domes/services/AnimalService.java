package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AnimalService {
    public List<Animal> afficherAleatoires();
    public List<Animal> listeParCategorie(int idCategorie);
}
