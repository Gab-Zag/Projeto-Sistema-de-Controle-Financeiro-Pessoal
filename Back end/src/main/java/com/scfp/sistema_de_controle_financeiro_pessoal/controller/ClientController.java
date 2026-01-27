package com.scfp.sistema_de_controle_financeiro_pessoal.controller;

import com.scfp.sistema_de_controle_financeiro_pessoal.dto.LoginRequest;
import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Client;
import com.scfp.sistema_de_controle_financeiro_pessoal.service.ClientService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class ClientController {

    private final ClientService clientService;

    public ClientController(ClientService clientService){
        this.clientService = clientService;
    }

    @PostMapping("/register")
    public ResponseEntity register(@RequestBody @Valid Client client){
        this.clientService.Register(client);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/login")
    public ResponseEntity login(@RequestBody @Valid LoginRequest data){
        String token = this.clientService.login(data);
        return ResponseEntity.ok(token);
    }
}
