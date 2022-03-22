import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {
  final maps = <String, dynamic>{};

  @override
  Future<void> write(String key, dynamic value) async {
    maps[key] = value;
  }

  @override
  dynamic read(String key) {
    return maps[key];
  }
}

T mockHydratedStorage<T>(T Function() body, {Storage? storage}) {
  return HydratedBlocOverrides.runZoned<T>(
    body,
    storage: storage ?? _buildMockStorage(),
  );
}

Storage _buildMockStorage() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final storage = MockStorage();
  return storage;
}
