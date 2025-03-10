part of 'api.dart';

class UserApi extends Fetchly {
  Future<Response> getData(int id) async => get('user/$id');
  Future<Response> getListUser() async => get('user');
  Future<Response> createUser(Map<String, dynamic> data) async =>
      post('user', data);

  
}
