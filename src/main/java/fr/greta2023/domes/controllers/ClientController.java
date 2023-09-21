package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.AdresseService;
import fr.greta2023.domes.services.ClientService;
import fr.greta2023.domes.services.FavorisService;
import fr.greta2023.domes.services.PanierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@SessionAttributes({"clientConnecte", "listePanier", "listeFavoris"})
public class ClientController {
    @Autowired
    private ClientService clientService;
    @Autowired
    private PanierService panierService;
    @Autowired
    FavorisService favorisService;
    @Autowired
    AdresseService adresseService;

    @PostMapping("/enregistrerClient")
    public String enregistrerClient(@Valid @ModelAttribute("client") Client client, BindingResult result, Model model){
        model.addAttribute("message",null );
        boolean isExist = clientService.verifEmail(client);
        if(isExist) {
            model.addAttribute("message", "Cet email a déjà un compte");
            return "connexionInscription";
        }
        if(result.hasErrors()){
            System.out.println("Inscription refusée !");
            return "redirect:connexionInscription";
        }
        clientService.creerClient(client);
        System.out.println("on enregistre le client");
        model.addAttribute("clientConnecte",client);
        return "redirect:monCompte";
    }

    @PostMapping("/seConnecter")
    public String connexionClient(@ModelAttribute("client") Client client,
                                        BindingResult result,
                                        Model model){

        Client clientConnecte = clientService.connexionClient(client);

        if(clientConnecte == null || result.hasErrors()){
            model.addAttribute("erreurConnexion","Email inexistant ou mot de passe erroné");
          //  model.addAttribute("clientConnecte",null);
            return "/connexionInscription";
        }
        model.addAttribute("clientConnecte",clientConnecte);
        List<Animal> listePanier = panierService.listerAnimauxDuPanier(clientConnecte);
        model.addAttribute("listePanier",listePanier);
        List<Animal> listeFavoris = favorisService.listerAnimauxFavoris(clientConnecte);
        model.addAttribute("listeFavoris",listeFavoris);
        return "redirect:/accueil" ;
    }

    @PostMapping("/modifierClient")
    public String modifierClient(@Valid @ModelAttribute("client") Client client,
                                 BindingResult result,
                                 HttpSession session,
                                 Model model){
        if(result.hasErrors()){
            return "redirect:/monCompte";
        }
        clientService.modifierClient(client, session);
        session.setAttribute("clientConnecte",client);
        System.out.println("Informations modifiées");

        Client clientConnecte = (Client) model.getAttribute("clientConnecte");
        List<Adresse> mesAdresses = (List<Adresse>) adresseService.afficherAdresses(clientConnecte);
        model.addAttribute("adresses",mesAdresses);
        return "redirect:/monCompte";
    }

    @ModelAttribute("adresse")
    public Adresse getDefaultAdresse(){
        return new Adresse();
    }
}
