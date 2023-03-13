package fr.greta2023.domes.controllers;


import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AnimalRepository;
import fr.greta2023.domes.services.FavorisService;
import fr.greta2023.domes.services.PanierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes("clientConnecte")
public class FavorisController {

    @Autowired
    private AnimalRepository animalRepository;

    @Autowired
    FavorisService favorisService;

    @GetMapping("/ajouterFavoris")
    @ResponseBody
    public String ajouterFavoris(@RequestParam("id") int id, HttpSession session, Model model, HttpServletRequest request){

        Client clientConnecte = (Client) session.getAttribute("clientConnecte");

        if(clientConnecte==null ){
            model.addAttribute("client",new Client());
            return "redirect:/connexionInscription";
        }

        Animal animalToAdd = animalRepository.findById(id);
        List<Animal> listeAvantTraitement = (List<Animal>) session.getAttribute("listeFavoris");

        boolean animalDejaPresent = false;

        for (Animal animal:listeAvantTraitement) {
            if(animal.getId() == animalToAdd.getId()){
                animalDejaPresent = true;
            }
        }

        if (animalDejaPresent) {
            favorisService.supprimerDesFavoris(clientConnecte,session,animalToAdd);
        } else {
            favorisService.ajouterAuxFavoris(clientConnecte,session,animalToAdd);
        }
        System.out.println(animalToAdd);
        List<Animal> listeActualisee = favorisService.listerAnimauxFavoris(clientConnecte);
        session.setAttribute("listeFavoris",listeActualisee);

        String referer = request.getHeader("referer");
        if (referer != null && referer.contains("produit")) {
            return "success";
        } else {
            return "success";
        }
    }
}
