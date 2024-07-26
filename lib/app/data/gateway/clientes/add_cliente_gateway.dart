part of '../../data.dart';

abstract class AddClienteGateway {
  Future<Cliente> call(Cliente cliente);
}
