import '../../shared.dart';

class ErrorResponse {
  ErrorResponse({
    required this.errorMessage,
    this.errors,
  });

  factory ErrorResponse.fromJson(Json json) {
    return ErrorResponse(
      errorMessage: json['message'] as String,
      // ignore: always_specify_types
      errors: List<String>.from(json['errors'] as List),
    );
  }

  final String errorMessage;
  final List<String>? errors;

  Json toJson() => <String, dynamic>{
        'message': errorMessage,
        'errors': errors,
      };
}
