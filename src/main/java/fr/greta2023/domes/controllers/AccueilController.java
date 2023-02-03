package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Client;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class AccueilController {

    @GetMapping("/produit")
    public String goProduit(){
        System.out.println("Page produit");
        return "produit";
    }




}
