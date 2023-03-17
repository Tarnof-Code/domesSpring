package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AdresseRepository;
import fr.greta2023.domes.services.AdresseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MonCompteController {

    @Autowired
    private AdresseService adresseService;


}
