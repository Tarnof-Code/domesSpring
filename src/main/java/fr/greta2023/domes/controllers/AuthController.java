package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.ClientService;
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

@Controller
@SessionAttributes("clientConnecte")
public class AuthController {
    @Autowired
    private ClientService clientService;

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
            return new RedirectView("/connexionInscription");
        }
        model.addAttribute("clientConnecte",clientConnecte);
        System.out.println(clientConnecte);
        return new RedirectView("/accueil") ;
    }




}
