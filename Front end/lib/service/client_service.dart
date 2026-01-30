import 'package:flutter_application_1/models/client.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ClientService {
  final String baseUrlRegister = "http://localhost:8080/auth/register";
  final String baseUrlLogin = "http://localhost:8080/auth/login";

  Future<Client> register(Client client) async {
    final response = await http.post(
      Uri.parse(baseUrlRegister),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(client.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return Client.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Erro ao registrar");
    }
  }
  
  Future<Client> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(baseUrlLogin),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      return Client.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Email ou senha inválidos");
    }
  }
}
