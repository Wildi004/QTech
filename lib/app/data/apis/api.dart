library api;

import 'package:fetchly/fetchly.dart';

part 'current_user.dart';
part 'user.dart';
part 'auth.dart';

class Api extends ApiServices {
  CurrentUserApi currentUser = CurrentUserApi();
  UserApi user = UserApi();
  AuthApi auth = AuthApi();
}

mixin class Apis {
  Api api = Api();
}
