import 'dart:convert';

import 'package:fruit_hub/Constant.dart';
import 'package:fruit_hub/Core/services/shared_preferences_singelton.dart';
import 'package:fruit_hub/Features/Auth/data/models/user_model.dart';
import 'package:fruit_hub/Features/Auth/domain/entites/user_entity.dart';

UserEntity getUserData() {
  var jsonString = Prefs.getString(KuserData);
  var userEntity = UserModel.fromjson(jsonDecode(jsonString));
  return userEntity;
}
