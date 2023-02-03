package fr.greta2023.domes.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String photo;

    private String nom;

    private String race;

    private int age;

    private String description;

    private double prix;


}
