// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrintStack(stackTrace: stackTrace, label: error.toString());
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(Widget Function() builder) async {
  FlutterError.onError = (details) {
    debugPrintStack(
      stackTrace: details.stack,
      label: details.exceptionAsString(),
    );
  };

  await runZonedGuarded(
    () async {
      final storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory(),
      );
      HydratedBlocOverrides.runZoned(
        () => runApp(builder()),
        blocObserver: AppBlocObserver(),
        storage: storage,
      );
    },
    (error, stackTrace) =>
        debugPrintStack(stackTrace: stackTrace, label: error.toString()),
  );
}
