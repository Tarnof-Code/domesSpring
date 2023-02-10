package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Categorie;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategorieService {
    public Iterable<Categorie> afficherCategories();
}
