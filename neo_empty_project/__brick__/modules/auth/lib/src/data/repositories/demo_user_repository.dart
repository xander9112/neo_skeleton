import 'package:auth/src/_src.dart';
import 'package:collection/collection.dart';

class DemoUserRepositoryImpl extends DemoUserRepository {
  final _demoUsers = [
    {
      'login': 'demo',
      'password': 'demo',
    }
  ];
  @override
  Future<bool> signIn(String login, String password) async {
    final result = _demoUsers.singleWhereOrNull(
      (element) => element['login'] == login && element['password'] == password,
    );

    return result != null;
  }
}
