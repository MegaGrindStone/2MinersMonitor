import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_monitor_oss/home/model/home_nav.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required List<HomeNav> navs})
      : super(_Initial(navs: navs, navIndex: 0)) {
    on<_NavSelected>(_onNavSelected);
    on<_NavTapped>(_onNavTapped);
  }

  void _onNavSelected(_NavSelected event, Emitter<HomeState> emit) {
    var uri = event.uri;
    if (uri == '/') {
      uri = '/miners';
    }
    emit(
      _SelectNavSuccess(
        navs: state.navs,
        navIndex: state.navs.indexWhere((nav) => uri.contains(nav.uri)),
      ),
    );
  }

  void _onNavTapped(_NavTapped event, Emitter<HomeState> emit) {
    emit(
      _TapNavSuccess(
        navs: state.navs,
        navIndex: state.navs.indexWhere((nav) => event.uri.contains(nav.uri)),
      ),
    );
  }
}
