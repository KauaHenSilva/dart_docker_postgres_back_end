part of '../api.dart';

class ClienteOutputDTO {
  final int id;
  final String nome;
  final String email;
  final String imageCapaURL;
  final String pix;

  ClienteOutputDTO({
    required this.id,
    required this.nome,
    required this.email,
    required this.imageCapaURL,
    required this.pix,
  });

  factory ClienteOutputDTO.toDTO(Cliente cliente) {
    return ClienteOutputDTO(
      id: cliente.id,
      nome: cliente.nome,
      email: cliente.email,
      imageCapaURL: cliente.imageCapaURL,
      pix: cliente.pix,
    );
  }

  static List<ClienteOutputDTO> toCollectionDTO(List<Cliente> clientes) {
    return clientes.map((cliente) => ClienteOutputDTO.toDTO(cliente)).toList();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'imageCapaURL': imageCapaURL,
      'pix': pix,
    };
  }
}
