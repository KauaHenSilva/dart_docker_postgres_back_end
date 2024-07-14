part of '../../api.dart';

class ClientesController implements Controller {
  @override
  String get route => '/clientes';

  @override
  Map<String, Handlers> get handlers => {
        'GET': GetClientesHandler(),
      };
}
