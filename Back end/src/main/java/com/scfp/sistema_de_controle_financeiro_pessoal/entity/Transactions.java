package com.scfp.sistema_de_controle_financeiro_pessoal.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "transactions")
public class Transactions {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false, precision = 12, scale = 2)
    private BigDecimal amount;

    @Column(nullable = false, columnDefinition = "tipo_categoria")
    private String type;

    @Column(name = "transaction_date")
    private LocalDateTime transactionDate;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;

    @ManyToOne
    @JoinColumn(name = "client_id", nullable = false)
    private Client client;

    protected Transactions(){}

    public Transactions(String description, BigDecimal amount, String type, LocalDateTime transactionDate, Category category, Client client){
        this.description = description;
        this.amount = amount;
        this.type = type;
        this.transactionDate = transactionDate;
        this.category = category;
        this.client = client;
    }

    public Integer getId(){return this.id;}

    public String getDescription(){return this.description;}

    public BigDecimal getAmount(){return this.amount;}

    public String getType(){return this.type;}

    public LocalDateTime getTransactionDate(){return this.transactionDate;}

    public Category getCategory(){return this.category;}

    public Client getClient(){return this.client;}

    public void setId(Integer id){this.id = id;}

    public void setDescription(String description){this.description = description;}

    public void setAmount(BigDecimal amount){this.amount = amount;}

    public void setType(String type){this.type = type;}

    public void setTransactionDate (LocalDateTime transactionDate){this.transactionDate = transactionDate;}

    public void setCategory (Category category){this.category = category;}

    public void setClient (Client client){this.client = client;}
}
