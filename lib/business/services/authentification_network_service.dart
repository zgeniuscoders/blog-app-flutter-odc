
import '../models/authentification.dart';
import '../models/user.dart';

abstract class AuthentificationNetworkService {
  Future<User> authentifier(Authentification data);
}
