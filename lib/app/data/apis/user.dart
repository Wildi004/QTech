part of 'api.dart';

class UserApi extends Fetchly {
  Future<Response> getData(int id) async => get('user/$id');
  Future<Response> getCurrent([Map<String, dynamic>? query]) async =>
      get('user/current', query);
  Future<Response> getListUser() async => get('user');
  Future<Response> createUser(Map<String, dynamic> data) async =>
      post('user', data);
}
