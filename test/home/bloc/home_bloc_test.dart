import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:two_miners_monitor_oss/home/bloc/home_bloc.dart';
import 'package:two_miners_monitor_oss/home/model/home_nav.dart';

void main() {
  group('HomeBloc', () {
    const testURI = 'testURI';
    const navs = <HomeNav>[
      HomeNav(label: 'dummny', icon: Icon(Icons.abc), uri: testURI)
    ];
    blocTest<HomeBloc, HomeState>(
      'emits [testURI] when menuTapped is added',
      build: () => HomeBloc(navs: navs),
      act: (bloc) => bloc.add(const HomeEvent.navSelected(uri: testURI)),
      expect: () => [const HomeState.selectNavSuccess(navs: navs, navIndex: 0)],
    );
  });
}
