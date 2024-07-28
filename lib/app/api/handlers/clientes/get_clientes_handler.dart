part of '../../api.dart';

class GetClientesHandler extends Handlers {
  final GetClientesUseCase getClientesUseCase;
  GetClientesHandler({required this.getClientesUseCase});

  @override
  // ignore: avoid_renaming_method_parameters
  Future<ResponseHandler> call(RequestParemets paremets) async {
    try {
      final clientes = await getClientesUseCase.call();
      return ResponseHandler<List<ClienteOutputDTO>>(
        status: StatusHandler.ok,
        body: ClienteOutputDTO.toCollectionDTO(clientes),
      );
    } catch (e) {
      return ResponseHandler(
        status: StatusHandler.internalServerError,
        body: null,
      );
    }
  }
}
