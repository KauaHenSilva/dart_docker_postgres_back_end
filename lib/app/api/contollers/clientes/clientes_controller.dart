part of '../../api.dart';

class ClientesController implements Controller {
  final GetClientesUsercase getClientesUseCase;
  ClientesController({required this.getClientesUseCase});

  @override
  String get route => '/clientes';

  @override
  Map<String, Handlers> get handlers => {
        'GET': GetClientesHandler(getClientesUseCase: getClientesUseCase),
      };
}
