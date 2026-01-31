import 'client_state.dart';
import '../models/client.dart';
import '../service/client_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ClientCubit extends Cubit<ClientState> {
  final ClientService service;

  ClientCubit(this.service) : super(ClientInitial());

  Future<void> login(String email, String password) async {
    try {
      emit(ClientLoading());

      final client = await service.login(email, password);

      emit(ClientAuthenticated(client));
    } catch (e) {
      emit(ClientError(e.toString()));
    }
  }

  Future<void> register(Client client) async {
    try {
      emit(ClientLoading());

      final newClient = await service.register(client);

      emit(ClientAuthenticated(newClient));
    } catch (e) {
      emit(ClientError(e.toString()));
    }
  }
}