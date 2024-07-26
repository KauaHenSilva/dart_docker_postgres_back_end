part of '../../data.dart';

class AddClienteServices extends AddClienteUseCase {
  final AddClienteGateway addClienteGateway;
  AddClienteServices({required this.addClienteGateway});

  @override
  Future<Cliente> call(Cliente cliente) async {
    return addClienteGateway(cliente);
  }
}
