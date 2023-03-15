package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
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
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@SessionAttributes({"clientConnecte", "listePanier", "listeFavoris"})
public class AuthController {
    @Autowired
    private ClientService clientService;
    @Autowired
    private PanierService panierService;
    @Autowired
    FavorisService favorisService;

    @PostMapping("/enregistrerClient")
    public String enregistrerClient(@Valid @ModelAttribute("client") Client client, BindingResult result, Model model){
        model.addAttribute("message",null );
        boolean isExist = clientService.verifEmail(client);
        if(isExist) {
            model.addAttribute("message", "Cet email a déjà un compte");
            return "connexionInscription";
        }
        if(result.hasErrors()){
            return "connexionInscription";
        }
        clientService.creerClient(client);
        System.out.println("on enregistre le client");
        return "monCompte";
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
                                 HttpSession session){
        if(result.hasErrors()){
            return "monCompte";
        }
        clientService.modifierClient(client, session);
        session.setAttribute("clientConnecte",client);
        System.out.println("Informations modifiées");
        return "monCompte";
    }
}
