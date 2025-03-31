import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import '../../business/models/user.dart';
import '../../business/services/authentification_local_service.dart';

class AuthentificationServiceLocalImpl extends AuthentificationLocalService {
  GetStorage? box;

  AuthentificationServiceLocalImpl({this.box});

  @override
  Future<bool> sauvergarderUser(User user) async {
    await box?.write("user", jsonEncode(user.toMap()));
    return Future.value(true);
  }
}
