package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AdresseRepository;
import fr.greta2023.domes.services.AdresseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class MonCompteController {

    @Autowired
    private AdresseService adresseService;

    @Autowired
    private AdresseRepository adresseRepository;

    @PostMapping("/ajouterAdresse")
    public  String ajouterAdresse(@ModelAttribute("adresse") Adresse adresse, HttpSession session){
        Client clientConnecte = (Client) session.getAttribute("clientConnecte");
        if(clientConnecte == null){
            return "connexionInscription";
        }

        if( adresse.getNom() == "" ||
            adresse.getNumeroVoie() == "" ||
            adresse.getNomVoie() == "" ||
            adresse.getCodepostal() == ""||
            adresse.getVille() == ""){
            adresse.setNom("Adresse à compléter");
        }
        adresseService.ajouterAdresse(adresse,clientConnecte);
        System.out.println("Adresse ajoutée");

        return "redirect:monCompte";
    }

    @PostMapping("/modifierAdresse")
    public String modifierAdresse(@ModelAttribute("adresse") Adresse nouvelleAdresse, @RequestParam("id") int id, Model model){
        Adresse adresseAmodifier = adresseRepository.findById(id);
        adresseService.modifierAdresse(adresseAmodifier,nouvelleAdresse);
        Client clientConnecte = (Client) model.getAttribute("clientConnecte");
        List<Adresse> mesAdresses = (List<Adresse>) adresseService.afficherAdresses(clientConnecte);
        model.addAttribute("adresses",mesAdresses);
        return "redirect:/monCompte";
    }

    @GetMapping("/supprimerAdresse")
    public String supprimerAdresse(@RequestParam("id") int id){
        adresseService.supprimerAdresse(id);
        return "redirect:/monCompte";
    }

    @ModelAttribute("client")
    public Client getDefaultClient(){
        return new Client();
    }
}
