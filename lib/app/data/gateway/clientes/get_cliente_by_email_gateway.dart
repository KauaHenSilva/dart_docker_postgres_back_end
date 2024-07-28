part of '../../data.dart';

abstract class GetClienteByEmailGateway {
  Future<Cliente?> call(String email);
}