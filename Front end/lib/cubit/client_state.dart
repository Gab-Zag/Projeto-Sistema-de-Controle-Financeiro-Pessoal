import 'package:equatable/equatable.dart';
import '../models/client.dart';

abstract class ClientState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ClientInitial extends ClientState{}

class ClientLoading extends ClientState{}

class ClientAuthenticated extends ClientState {
  final Client client;
  ClientAuthenticated(this.client);

  @override
  List<Object?> get props => [client];
}

class ClientError extends ClientState {
  final String message;
  ClientError(this.message);

  @override
  List<Object?> get props => [message];
}