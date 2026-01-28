import 'package:flutter_application_1/models/client.dart';

abstract class ClientsServices {
  Future<Client> getClients(int id);
}