part of '../api.dart';

class ClientesOutputDTO {
  final int id;
  final String nome;
  final String email;
  final String telefone;

  ClientesOutputDTO({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
  });
}
