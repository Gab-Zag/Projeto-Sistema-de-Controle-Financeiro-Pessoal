package com.scfp.sistema_de_controle_financeiro_pessoal.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    private String name;

    @Column(nullable = false)
    private String type;

    @ManyToOne
    @JoinColumn(name = "client_id", nullable = false)
    private Client client;

    protected Category(){}

    public Category(String name, String type, Client client){
        this.name = name;
        this.type = type;
        this.client = client;
    }

    public Integer getId(){return this.id;}

    public String getName(){return this.name;}

    public String getType(){return this.type;}

    public Client getClient(){return this.client;}
}
