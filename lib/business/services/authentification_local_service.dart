import '../models/user.dart';

abstract class AuthentificationLocalService {
  Future<bool> sauvergarderUser(User user);
}
