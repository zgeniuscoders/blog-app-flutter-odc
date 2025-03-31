import 'package:blog/domain/models/authentification.dart';
import 'package:blog/domain/models/user.dart';

abstract class AuthentificationNetworkService {
  Future<User> authentifier(Authentification data);
}
