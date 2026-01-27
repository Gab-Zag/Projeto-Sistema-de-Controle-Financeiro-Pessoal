package com.scfp.sistema_de_controle_financeiro_pessoal.service;

import com.scfp.sistema_de_controle_financeiro_pessoal.dto.LoginRequest;
import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Client;
import com.scfp.sistema_de_controle_financeiro_pessoal.repository.ClientRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ClientService {

    private final ClientRepository clientRepository;

    public ClientService(ClientRepository clientRepository){
        this.clientRepository = clientRepository;
    }

    public Client Register(Client client){
        return clientRepository.save(client);
    }

    public String login(LoginRequest data) {
        Client client = clientRepository.findByEmail(data.email())
                .orElseThrow(() -> new RuntimeException("Usuário não encontrado"));

        if (!data.password().equals(client.getPassword())) {
            throw new RuntimeException("Senha inválida");
        }

        return "Login realizado com sucesso (Sem Token por enquanto)";
    }
}