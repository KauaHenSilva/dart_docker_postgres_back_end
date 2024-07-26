part of '../../api.dart';

class AddClientesHandler extends Handlers {
  final AddClienteUseCase addClienesUserCase;

  AddClientesHandler({required this.addClienesUserCase});
  @override
  Future<ResponseHandler> call(RequestParemets body) async {
    return ResponseHandler(
        status: StatusHandler.created,
        body: ClienteOutputDTO(
          id: 1,
          email: 'email',
          imageCapaURL: 'imageCapaURL',
          nome: 'nome',
          pix: 'pix',
        ));
  }
}
