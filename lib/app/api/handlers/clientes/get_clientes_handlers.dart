part of '../../api.dart';

class GetClientesHandler extends Handlers {
  final GetClientesUseCase getClientesUseCase;
  GetClientesHandler({required this.getClientesUseCase});

  @override
  Future<ResponseHandler> call() async {
    try {
      final clientes = await getClientesUseCase.call();
      return ResponseHandler<List<ClientesOutputDTO>>(
        status: StatusHandler.ok,
        body: ClientesOutputDTO.toCollectionDTO(clientes),
      );
    } catch (e) {
      return ResponseHandler(
        status: StatusHandler.internalServerError,
        body: null,
      );
    }
  }
}
