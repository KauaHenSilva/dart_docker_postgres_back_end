part of '../../api.dart';

class GetClientesHandler extends Handlers {
  @override
  Future<ResponseHandler> call() async {
    return ResponseHandler(
      status: StatusHandler.ok,
      body: <ClientesOutputDTO>[]
    );
  }
}
