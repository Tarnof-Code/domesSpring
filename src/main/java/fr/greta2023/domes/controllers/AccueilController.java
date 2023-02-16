package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AccueilController {

    @Autowired
    private AnimalRepository animalRepository;

    @GetMapping("/produit")
    public String goProduit(@RequestParam("id") int id, Model model){
        System.out.println("Page produit");
        Animal animalSelection = animalRepository.findById(id);
        model.addAttribute("animalSelection",animalSelection);
        return "produit";
    }






}
