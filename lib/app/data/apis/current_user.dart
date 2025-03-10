part of 'api.dart';

class CurrentUserApi extends Fetchly {
  Future<Response> getData([Map<String, dynamic>? query]) async => get('path', query);
}