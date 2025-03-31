import 'package:blog/domain/models/authentification.dart';
import 'package:blog/domain/models/user.dart';

abstract class AuthentificationLocalService {
  Future<bool> sauvergarderUser(User user);
}
