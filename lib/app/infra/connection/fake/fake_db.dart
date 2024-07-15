part of '../../infra.dart';

class FakeDb implements Connection {
  @override
  Future<void> close() {
    print('FakeDb: close');
    return Future.value();
  }

  @override
  Future<List<Map<String, dynamic>>> query(String query) {
    return Future.value([
      {'id': 1, 'nome': 'João', 'email': 'email1@email.com', 'telefone': '11111-1111'},
      {'id': 2, 'nome': 'Maria', 'email': 'email2@email.com', 'telefone': '22222-2222'},
      {'id': 3, 'nome': 'José', 'email': 'email3@email.com', 'telefone': '33333-3333'},
    ]);
  }
}
