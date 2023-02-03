package fr.greta2023.domes.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PanierController {

    @GetMapping("/paiement")
    public String goPaiement(){
        System.out.println("Page Paiement");
        return "paiement";
    }
}
