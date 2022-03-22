// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:two_miners_monitor_oss/app/app.dart';
import 'package:two_miners_monitor_oss/home/view/home_page.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(
        const App(flavour: AppFlavour.dev),
      );
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
