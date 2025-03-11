library api;

import 'package:fetchly/fetchly.dart';

part 'user.dart';
part 'auth.dart';

class Api extends ApiServices {
  UserApi user = UserApi();
  AuthApi auth = AuthApi();
}

mixin class Apis {
  Api api = Api();
}
