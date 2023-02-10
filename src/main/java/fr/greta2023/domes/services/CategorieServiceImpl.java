package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Categorie;
import fr.greta2023.domes.repository.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategorieServiceImpl implements CategorieService{

    private CategorieRepository categorieRepository;

    @Autowired
    CategorieServiceImpl(CategorieRepository categorieRepository){
        this.categorieRepository = categorieRepository;
    }

    @Override
    public Iterable<Categorie> afficherCategories() {
        return categorieRepository.findAll();
    }
}
