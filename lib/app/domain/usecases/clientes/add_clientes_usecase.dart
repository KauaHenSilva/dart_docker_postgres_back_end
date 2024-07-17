part of '../../domain.dart';

abstract class AddClientesUseCase {
  Future<Cliente> call(Cliente cliente);
}