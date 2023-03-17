package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AnimalRepository;
import fr.greta2023.domes.services.PanierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes("clientConnecte")
public class PanierController {

    @Autowired
    private AnimalRepository animalRepository;
    @Autowired
    PanierService panierService;

    @GetMapping("/ajouterPanier")
    @ResponseBody
    public String ajouterPanier(@RequestParam("id") int id, HttpSession session, Model model, HttpServletRequest request){

        Client clientConnecte = (Client) session.getAttribute("clientConnecte");

        if(clientConnecte==null ){
            model.addAttribute("client",new Client());
            return "redirect:/connexionInscription";
        }

        Animal animalToAdd = animalRepository.findById(id);
        List<Animal> listeAvantTraitement = (List<Animal>) session.getAttribute("listePanier");

        boolean animalDejaPresent = false;

        for (Animal animal:listeAvantTraitement) {
            if(animal.getId() == animalToAdd.getId()){
                animalDejaPresent = true;
            }
        }

        if (animalDejaPresent) {
            panierService.supprimerDuPanier(clientConnecte,session,animalToAdd);
        } else {
            panierService.ajouterAuPanier(clientConnecte,session,animalToAdd);
        }

        List<Animal> listeActualisee = panierService.listerAnimauxDuPanier(clientConnecte);
        session.setAttribute("listePanier",listeActualisee);

        String referer = request.getHeader("referer");
        if (referer != null && referer.contains("produit")) {
            return "success";
        } else {
            return "success";
        }
    }



    @GetMapping("/supprimerDuPanier")
    public RedirectView supprimerDuPanier(@RequestParam("id") int id, HttpSession session){
        Client clientConnecte = (Client) session.getAttribute("clientConnecte");
        Animal animalToDel = animalRepository.findById(id);
        panierService.supprimerDuPanier(clientConnecte,session,animalToDel);
       return new RedirectView("/panier?id="+clientConnecte.getId());
    }


    @GetMapping("/paiement")
    public String goPaiement(){
        System.out.println("Page Paiement");
        return "paiement";
    }
}
