part of 'api.dart';

class AuthApi extends Fetchly {
  Future<Response> login(Map<String, dynamic> data) async =>
      post('auth/login', data);
}
