part of '../../data.dart';

class AddClienteServices extends AddClienteUseCase {
  final AddClienteGateway addClienteGateway;
  final GetClienteByEmailGateway getClienteByEmailGateway;

  AddClienteServices({
    required this.getClienteByEmailGateway,
    required this.addClienteGateway,
  });

  @override
  Future<Cliente> call(Cliente cliente) async {
    final clienteExistente = await getClienteByEmailGateway(cliente.email);

    if (clienteExistente != null) {
      throw ClienteEmailExistException();
    }

    return addClienteGateway(cliente);
  }
}
