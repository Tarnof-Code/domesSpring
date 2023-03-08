package fr.greta2023.domes.controllers;


import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Categorie;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.AnimalService;
import fr.greta2023.domes.services.AnimalServiceImpl;
import fr.greta2023.domes.services.CategorieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class NavbarController {

    @Autowired
    private AnimalService animalService;

    @Autowired
    private CategorieService categorieService;

    @ModelAttribute("clientConnecte")
    public Client getClientConnecte(HttpSession session) {
        return (Client) session.getAttribute("clientConnecte");
    }


    @GetMapping("/accueil")
    public String goAccueil( Model model){

        List<Animal> listeAnimauxAleatoire = new ArrayList<Animal>();
        listeAnimauxAleatoire = animalService.afficherAleatoires();
        model.addAttribute("listeAleatoire",listeAnimauxAleatoire);

        Iterable<Categorie> listeCategories = new ArrayList<>();
        listeCategories = categorieService.afficherCategories();
        model.addAttribute("listeCategories",listeCategories);

        /*List<Animal> listeChiens = new ArrayList<>();
        listeChiens = animalService.listeParCategorie(1);
        model.addAttribute("listeChiens",listeChiens);*/

        Iterable<Categorie> catalogue = new ArrayList<>();
        catalogue = categorieService.afficherCategories();
        model.addAttribute("catalogue",catalogue);


        return "accueil";
    }

    @GetMapping("/panier")
    public String goPanier(Model model){
        List<Animal> listeAnimauxAleatoire = animalService.afficherAleatoires();
        model.addAttribute("listeAleatoire",listeAnimauxAleatoire);
        Client clientConnecte = (Client) model.getAttribute("clientConnecte");
        if(clientConnecte != null){
            return "panier";
        }
        return "connexionInscription";
    }

    @GetMapping("/connexionInscription")
    public String goConnexionInscription(){
        System.out.println("Page de connexion / inscription");
        return "connexionInscription";
    }

    @GetMapping("/aide")
    public String goAide(){
        System.out.println("Page d'aide");
        return "aide";
    }

    @GetMapping("/compte")
    public String goCompte() {
        System.out.println("Page Mon compte");
        return "compte";
    }
    @ModelAttribute("client")
    public Client getDefaultClient(){
        return new Client();
    }


}
