part of '../../data.dart';

class GetClientesServices extends GetClientesUseCase {
  final GetClientesGateway getClientesGateway;
  GetClientesServices({required this.getClientesGateway});

  @override
  Future<List<Cliente>> call() async {
    return await getClientesGateway();
  }

}