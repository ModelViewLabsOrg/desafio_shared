import '../../shared.dart';

class PasswordValidatorRequest {
  const PasswordValidatorRequest({required this.password});

  factory PasswordValidatorRequest.fromJson(Json json) {
    return PasswordValidatorRequest(
      password: json['password'] as String,
    );
  }

  final String password;

  Json toJson() => <String, dynamic>{
        'password': password,
      };
}
