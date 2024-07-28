part of '../../domain.dart';

abstract class AddClienteUseCase {
  Future<Cliente> call(Cliente cliente);
}