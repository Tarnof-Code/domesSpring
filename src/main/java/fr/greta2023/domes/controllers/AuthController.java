package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
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
        model.addAttribute("message","l'utilisateur est sauvegarde" );
        return "compte";
    }

    @PostMapping("/seConnecter")
    public String connexionClient(@ModelAttribute("client") Client client,BindingResult result, Model model){
        boolean isCorrect = clientService.connexionClient(client);
        if(!isCorrect || result.hasErrors()){
            return "connexionInscription";
        }
        return "compte";
    }




}
