import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:two_miners_monitor_oss/home/bloc/home_bloc.dart';
import 'package:two_miners_monitor_oss/home/location/home_location.dart';
import 'package:two_miners_monitor_oss/home/model/home_nav.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final homeNavs = navs(context);
    return BlocProvider(
      create: (context) => HomeBloc(navs: homeNavs),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        // Build each time settings changed.
        builder: (context, state) {
          return HomeView(
            key: ValueKey<String>(state.settings.toString()),
          );
        },
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _beamerKey = GlobalKey<BeamerState>();

  void _beamerListener() => context.read<HomeBloc>().add(
        HomeEvent.navSelected(
          uri: (context.currentBeamLocation.state as BeamState).uri.path,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            tapNavSuccess: (navs, navIndex) => _beamerKey
                .currentState?.routerDelegate
                .beamToReplacementNamed(navs[navIndex].uri),
          );
        },
        child: Beamer(
          key: _beamerKey,
          routerDelegate: BeamerDelegate(
            locationBuilder: (routeInformation, _) =>
                HomeContentsLocation(routeInformation),
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          state.whenOrNull(
            initial: (_, __) {
              _beamerListener();
              _beamerKey.currentState?.routerDelegate
                  .addListener(_beamerListener);
            },
          );
          return const BottomNavBar();
        },
      ),
    );
  }

  @override
  void dispose() {
    _beamerKey.currentState?.routerDelegate.removeListener(_beamerListener);
    super.dispose();
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return NavigationBar(
          selectedIndex: state.navIndex,
          onDestinationSelected: (index) {
            context.read<HomeBloc>().add(
                  HomeEvent.navTapped(uri: state.navs[index].uri),
                );
          },
          destinations: state.navs
              .map(
                (nav) =>
                    NavigationDestination(icon: nav.icon, label: nav.label),
              )
              .toList(),
        );
      },
    );
  }
}
