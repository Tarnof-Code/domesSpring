package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.beans.Favoris;
import fr.greta2023.domes.repository.FavorisRepository;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Service
public class FavorisServiceImpl implements FavorisService{

    private FavorisRepository favorisRepository;

    public FavorisServiceImpl(FavorisRepository favorisRepository){this.favorisRepository = favorisRepository;}

    @Override
    public List<Animal> listerAnimauxFavoris(Client client) {
        try{
            List<Favoris> listeFavoris = favorisRepository.findByClient(client);
            List<Animal> animalList = new ArrayList<>();
            for(Favoris favoris:listeFavoris){
                animalList.add(favoris.getAnimal());
            }
            return animalList;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void ajouterAuxFavoris(Client client, HttpSession session, Animal animal) {
        try{
            Favoris favoris = new Favoris();
            favoris.setClient(client);
            favoris.setAnimal(animal);
            favorisRepository.save(favoris);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    @Override
    public void supprimerDesFavoris(Client client, HttpSession session, Animal animal) {
        try{
            Favoris animalASuppr = favorisRepository.findByClientAndAnimal(client,animal);
            favorisRepository.delete(animalASuppr);
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
