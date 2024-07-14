part of '../../domain.dart';

abstract class GetClientesUseCase {
  Future<List<Cliente>> call();
}
