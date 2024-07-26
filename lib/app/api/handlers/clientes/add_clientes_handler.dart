part of '../../api.dart';

class AddClientesHandler extends Handlers {
  final AddClienteUseCase addClienesUserCase;

  AddClientesHandler({required this.addClienesUserCase});
  @override
  Future<ResponseHandler> call(RequestParemets body) async {
    try {
      final cliente = ClienteInputDTO.toEntity(body.body!);
      final creatCliente = await addClienesUserCase(cliente);
      return ResponseHandler(
        status: StatusHandler.created,
        body: ClienteOutputDTO.toDTO(creatCliente),
      );
      
    } on ClienteEmailExistException {
      return ResponseHandler(
        status: StatusHandler.badRequest,
        body: MessageError('Email já cadastrado'),
      );
    } catch (e) {
      return ResponseHandler(
        status: StatusHandler.internalServerError,
        body: e.toString(),
      );
    }
  }
}
