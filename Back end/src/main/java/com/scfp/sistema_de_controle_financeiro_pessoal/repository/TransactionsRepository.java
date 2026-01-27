package com.scfp.sistema_de_controle_financeiro_pessoal.repository;

import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Transactions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TransactionsRepository extends JpaRepository<Transactions, Integer> {
}
