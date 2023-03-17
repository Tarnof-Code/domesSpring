package fr.greta2023.domes.controllers;


import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Categorie;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class NavbarController {

    @Autowired
    private AnimalService animalService;
    @Autowired
    private CategorieService categorieService;
    @Autowired
    private PanierService panierService;
    @Autowired
    private FavorisService favorisService;
    @Autowired
    private AdresseService adresseService;

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

        Iterable<Categorie> catalogue = new ArrayList<>();
        catalogue = categorieService.afficherCategories();
        model.addAttribute("catalogue",catalogue);

        return "accueil";
    }

    @GetMapping("/panier")
    public String goPanier(Model model){

        Client clientConnecte = (Client) model.getAttribute("clientConnecte");

        List<Animal> listeAnimauxAleatoire = animalService.afficherAleatoires();
        model.addAttribute("listeAleatoire",listeAnimauxAleatoire);

        List<Animal> listePanier = panierService.listerAnimauxDuPanier(clientConnecte);
        model.addAttribute("listePanier",listePanier);

        double prixTotal = panierService.calculerPrixTotalDuPanier(clientConnecte);
        model.addAttribute("prixTotal",prixTotal);

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

    @GetMapping("/monCompte")
    public String monCompte(Model model ){
        System.out.println("Page Mon compte");

        Client clientConnecte = (Client) model.getAttribute("clientConnecte");

        if(clientConnecte!=null){
            List<Animal> listeFavoris = favorisService.listerAnimauxFavoris(clientConnecte);
            model.addAttribute("listeFavoris",listeFavoris);
            List<Animal> listePanier = panierService.listerAnimauxDuPanier(clientConnecte);
            model.addAttribute("listePanier",listePanier);
            List<Adresse> mesAdresses = (List<Adresse>) adresseService.afficherAdresses(clientConnecte);
            model.addAttribute("adresses",mesAdresses);
            return "monCompte";
        }
        return "connexionInscription";
    }


    @ModelAttribute("client")
    public Client getDefaultClient(){
        return new Client();
    }

    @ModelAttribute("adresse")
    public Adresse getDefaultAdresse(){return new Adresse();}


}
