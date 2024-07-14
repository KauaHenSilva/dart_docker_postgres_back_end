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

  factory ClientesOutputDTO.toDTO(Cliente cliente) {
    return ClientesOutputDTO(
      id: cliente.id,
      nome: cliente.nome,
      email: cliente.email,
      telefone: cliente.telefone,
    );
  }

  static List<ClientesOutputDTO> toCollectionDTO(List<Cliente> clientes) {
    return clientes.map((cliente) => ClientesOutputDTO.toDTO(cliente)).toList();
  }

}
