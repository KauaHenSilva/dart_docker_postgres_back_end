part of '../../api.dart';

class ClientesController implements Controller {
  final GetClientesUseCase getClientesUseCase;
  final AddClienteUseCase addClientesUseCase;
  
  ClientesController({
    required this.getClientesUseCase,
    required this.addClientesUseCase,
  });

  @override
  String get route => '/clientes';

  @override
  Map<String, Handlers> get handlers => {
        'GET': GetClientesHandler(getClientesUseCase: getClientesUseCase),
        'POST': AddClientesHandler(addClienesUserCase: addClientesUseCase),
      };
}
