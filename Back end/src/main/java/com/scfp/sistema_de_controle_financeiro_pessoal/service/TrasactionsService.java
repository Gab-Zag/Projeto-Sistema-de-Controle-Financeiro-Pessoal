package com.scfp.sistema_de_controle_financeiro_pessoal.service;

import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Transactions;
import com.scfp.sistema_de_controle_financeiro_pessoal.repository.TransactionsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TrasactionsService {
    private final TransactionsRepository transactionsRepository;

    public TrasactionsService(TransactionsRepository transactionsRepository){
        this.transactionsRepository = transactionsRepository;
    }

    public List<Transactions> getAllTrasactions(Transactions transaction){
        return transactionsRepository.findAll();
    }

    public Transactions getTrasactionsById(Integer id){
        return transactionsRepository.findById(id).orElse(null);
    }

    public Transactions postTrasactions(Transactions transactions){
        return transactionsRepository.save(transactions);
    }

    public Transactions putTrasactions(Transactions transactions){
        return transactionsRepository.save(transactions);
    }

    public void deleTrasactions(Integer id){
        transactionsRepository.deleteById(id);
    }
}
