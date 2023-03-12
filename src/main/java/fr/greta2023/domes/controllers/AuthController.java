package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.ClientService;
import fr.greta2023.domes.services.PanierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@Controller
@SessionAttributes({"clientConnecte", "listePanier", "nombreArticlesPanier"})
public class AuthController {
    @Autowired
    private ClientService clientService;
    @Autowired
    private PanierService panierService;

    @PostMapping("/enregistrerClient")
    public String enregistrerClient(@Valid @ModelAttribute("client") Client client, BindingResult result, Model model){

        boolean isExist = clientService.creerClient(client);
        if(result.hasErrors() || !isExist ){
            model.addAttribute("message","Mail déjà utilisé !" );
            return "connexionInscription";

        }
        System.out.println("on enregistre le client");
        return "compte";
    }

    @PostMapping("/seConnecter")
    public RedirectView connexionClient(@ModelAttribute("client") Client client,
                                        BindingResult result,
                                        Model model){
        Client clientConnecte = clientService.connexionClient(client);
        if(clientConnecte == null || result.hasErrors()){
            model.addAttribute("erreurConnexion","Email inexistant ou mot de passe erroné");
            model.addAttribute("clientConnecte",null);
            return new RedirectView("/connexionInscription");
        }
        model.addAttribute("clientConnecte",clientConnecte);
        List<Animal> listePanier = panierService.listerAnimauxDuPanier(clientConnecte);
        model.addAttribute("listePanier",listePanier);

        return new RedirectView("/accueil") ;
    }




}
