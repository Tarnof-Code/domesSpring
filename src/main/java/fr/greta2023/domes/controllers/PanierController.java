package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AnimalRepository;
import fr.greta2023.domes.services.PanierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("clientConnecte")
public class PanierController {

    @Autowired
    private AnimalRepository animalRepository;
    @Autowired
    PanierService panierService;

    @GetMapping("/ajouterPanier")
    public String ajouterPanier(@RequestParam("id") int id, HttpSession session, Model model){

        if(session.getAttribute("clientConnecte")==null){
            return "connexionInscription";
        }

        Client clientConnecte = (Client) session.getAttribute("clientConnecte");
        Animal animalToAdd = animalRepository.findById(id);
        panierService.ajouterAuPanier(clientConnecte,animalToAdd);
        model.addAttribute("animalSelection",animalToAdd);
        return "produit";


    }

    @GetMapping("/paiement")
    public String goPaiement(){
        System.out.println("Page Paiement");
        return "paiement";
    }
}
