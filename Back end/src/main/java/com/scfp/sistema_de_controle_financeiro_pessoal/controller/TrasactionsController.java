package com.scfp.sistema_de_controle_financeiro_pessoal.controller;

import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Transactions;
import com.scfp.sistema_de_controle_financeiro_pessoal.service.TrasactionsService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/transacoes")
public class TrasactionsController {

    private final TrasactionsService trasactionsService;

    public TrasactionsController(TrasactionsService trasactionsService){
        this.trasactionsService = trasactionsService;
    }

    @GetMapping
    public ResponseEntity<List<Transactions>> getTransactions(){
        return ResponseEntity.ok(this.trasactionsService.getAllTrasactions(null));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Transactions> findById(@PathVariable Integer id){
        Transactions transactions = this.trasactionsService.getTrasactionsById(id);
        return ResponseEntity.ok(transactions);
    }

    @PostMapping
    public ResponseEntity postTransactions(@RequestBody @Valid Transactions transactions) {
        this.trasactionsService.postTrasactions(transactions);
        return ResponseEntity.ok().build();
    }

    @PutMapping("/{id}")
    public ResponseEntity putTransactions(@PathVariable Integer id, @RequestBody @Valid Transactions transactions){
        transactions.setId(id);
        this.trasactionsService.putTrasactions(transactions);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity deleteTrasactions(@PathVariable Integer id){
        this.trasactionsService.deleTrasactions(id);
        return ResponseEntity.ok().build();
    }
}
