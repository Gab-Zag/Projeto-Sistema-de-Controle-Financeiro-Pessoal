package com.scfp.sistema_de_controle_financeiro_pessoal.repository;

import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {

    Optional<Client> findByEmail(String email);
}
