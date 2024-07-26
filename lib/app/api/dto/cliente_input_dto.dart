part of '../api.dart';

abstract class ClienteInputDTO {
  static Cliente toEntity(Map<String, dynamic> map) {
    return Cliente(
      id: 0,
      nome: map['nome'],
      email: map['email'],
      imageCapaURL: map['image_capa_url'],
      pix: map['pix'],
    );
  }
}
