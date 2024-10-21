import '../../shared.dart';

class RandomResponse extends PasswordValidatorRequest {
  RandomResponse({required super.password});

  factory RandomResponse.fromJson(Json json) {
    return RandomResponse(
      password: json['password'] as String,
    );
  }
}
