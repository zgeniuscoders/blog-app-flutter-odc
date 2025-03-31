class Authentification {
  String? email;
  String? password;

  Authentification({
    this.email,
    this.password,
  });

  Authentification copyWith({
    String? email,
    String? password,
  }) =>
      Authentification(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory Authentification.fromMap(Map<String, dynamic> json) => Authentification(
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toMap() => {
    "email": email,
    "password": password,
  };
}