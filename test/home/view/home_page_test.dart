import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/home/view/home_page.dart';
import 'package:two_miners_monitor_oss/miners/view/miners_page.dart';
import 'package:two_miners_monitor_oss/workers/view/workers_page.dart';

import '../../helpers/helpers.dart';

class MockCoinRepositories extends Mock implements CoinRepositories {}

class MockBaseRepository extends Mock implements BaseRepository {}

void main() {
  final routerDelegate = BeamerDelegate(
    initialPath: '/miners',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '*': (context, state, data) => const HomePage(),
      },
    ),
  );

  group('HomePage', () {
    late CoinRepositories coinRepositories;

    setUp(() {
      coinRepositories = MockCoinRepositories();
      final baseRepository = MockBaseRepository();
      when(() => coinRepositories.repositories)
          .thenReturn(<RepositoryIndex, BaseRepository>{
        RepositoryIndex.eth: baseRepository
      });
    });

    testWidgets('renders HomeView', (tester) async {
      await tester.pumpApp(
        coinRepositories: coinRepositories,
        routerDelegate: routerDelegate,
      );
      expect(find.byType(HomeView), findsOneWidget);
    });
  });

  group('HomeView', () {
    late CoinRepositories coinRepositories;

    setUp(() {
      coinRepositories = MockCoinRepositories();
      final baseRepository = MockBaseRepository();
      when(() => coinRepositories.repositories)
          .thenReturn(<RepositoryIndex, BaseRepository>{
        RepositoryIndex.eth: baseRepository
      });
    });

    testWidgets('tap miner menu', (tester) async {
      await tester.pumpApp(
        coinRepositories: coinRepositories,
        routerDelegate: routerDelegate,
      );
      await tester.tap(find.byIcon(Icons.monitor_outlined));
      await tester.pumpAndSettle();
      expect(find.byType(MinersPage), findsOneWidget);
    });

    testWidgets('tap worker menu', (tester) async {
      await tester.pumpApp(
        coinRepositories: coinRepositories,
        routerDelegate: routerDelegate,
      );
      await tester.tap(find.byIcon(Icons.group_work));
      await tester.pumpAndSettle();
      expect(find.byType(WorkersPage), findsOneWidget);
    });
  });
}
