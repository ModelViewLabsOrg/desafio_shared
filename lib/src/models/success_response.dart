import '../../shared.dart';

class SuccessResponse {
  SuccessResponse({
    required this.id,
    required this.message,
  });

  factory SuccessResponse.fromJson(Json json) {
    return SuccessResponse(
      id: json['id'] as String,
      message: json['message'] as String,
    );
  }

  final String id;
  final String message;

  Json toJson() => <String, dynamic>{
        'id': id,
        'message': message,
      };
}
