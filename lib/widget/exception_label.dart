import 'package:flutter/material.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/exception.dart';

class ExceptionLabel extends StatelessWidget {
  const ExceptionLabel({Key? key, required this.exception}) : super(key: key);

  final ExceptionModel exception;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Theme.of(context).colorScheme.error,
      child: Center(
        child: Text(
          parseAPIException(context, exception),
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).colorScheme.onError),
        ),
      ),
    );
  }
}
