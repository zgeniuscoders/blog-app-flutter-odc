import 'dart:convert';

import '../../business/models/authentification.dart';
import '../../business/models/user.dart';
import '../../business/services/authentification_network_service.dart';
import 'package:http/http.dart' as http;

class AuthentificationServiceNetworkImpl
    extends AuthentificationNetworkService {
  @override
  Future<User> authentifier(Authentification data) async {
    var uri = Uri.parse('http://10.252.252.46:8000/api/login');
    var body = jsonEncode(data.toMap());
    var response = await http.post(
      uri,
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    var jsonData = jsonDecode(response.body);

    if (![200, 201].contains(response.statusCode)) {
      var error = jsonData["error"];
      throw Exception(error);
    }

    var user = User.fromMap(jsonData["data"]);

    return Future.value(user);
  }
}

void main() async {
  var i = AuthentificationServiceNetworkImpl();
  try {
    var r = await i.authentifier(
      Authentification(email: "test@gmail.com", password: "123456b"),
    );
    print(r.name);
  } catch (e) {
    print(e);
  }
}
