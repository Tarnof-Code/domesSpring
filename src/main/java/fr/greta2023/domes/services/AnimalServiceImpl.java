package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Categorie;
import fr.greta2023.domes.repository.AnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AnimalServiceImpl implements AnimalService {


    private AnimalRepository animalRepository;

    @Autowired
    AnimalServiceImpl(AnimalRepository animalRepository) {
        this.animalRepository = animalRepository;
    }

    @Autowired
    CategorieService categorieService;

    @Override
    public List<Animal> afficherAleatoires() {

        long count = animalRepository.count();

        List animauxAleatoires = new ArrayList();
        List listId = new ArrayList<>();

        for (int i = 0; i < 6; i++) {
            int id = (1 + (int) (Math.random() * (count)));
            Animal animal = animalRepository.findById(id);
            if (animal != null && !listId.contains(id)) {
                animauxAleatoires.add(animal);
                listId.add(id);
            } else {
                i--;
            }


        }

        return animauxAleatoires;


    }



    /*@Override
    public List<Animal> listeParCategorie(int idCategorie) {
        return animalRepository.findByCategorieId(idCategorie);
    }


    public List<List<Animal>> listeAnimauxParCategorie() {

        List<List<Animal>> results = new ArrayList<>();
        Iterable<Categorie> listCategories = categorieService.afficherCategories();

        for (Categorie c : listCategories){
            List<Animal> animauxParCat = listeParCategorie(c.getId());
            results.add(animauxParCat);
        }
        return results;
    }*/
}