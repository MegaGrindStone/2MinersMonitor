import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception_model.freezed.dart';

enum ExceptionCode {
  unknown,
  unauthorized,
  forbidden,
  notFound,
}

@freezed
class ExceptionModel with _$ExceptionModel implements Exception {
  const factory ExceptionModel({
    required int httpStatusCode,
    required String message,
  }) = _ExceptionModel;
  const ExceptionModel._();

  ExceptionCode get code {
    if (httpStatusCode == 401) {
      return ExceptionCode.unauthorized;
    } else if (httpStatusCode == 403) {
      return ExceptionCode.forbidden;
    } else if (httpStatusCode == 404) {
      return ExceptionCode.notFound;
    }
    return ExceptionCode.unknown;
  }
}
