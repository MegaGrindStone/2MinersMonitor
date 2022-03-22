import 'package:flutter/material.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';

String parseAPIException(
  BuildContext context,
  ExceptionModel exception,
) {
  const response = 'API Response: ';
  switch (exception.code) {
    case ExceptionCode.notFound:
      return '$response${context.l10n.apiNotFoundException}';
    case ExceptionCode.unknown:
      return exception.message;
    case ExceptionCode.unauthorized:
      return '$response${context.l10n.apiUnauthorizedException}';
    case ExceptionCode.forbidden:
      return '$response${context.l10n.apiForbiddenException}';
  }
}
