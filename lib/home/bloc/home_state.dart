part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required List<HomeNav> navs,
    required int navIndex,
  }) = _Initial;

  // This state is use to notice any navigation to update it's selected item.
  const factory HomeState.selectNavSuccess({
    required List<HomeNav> navs,
    required int navIndex,
  }) = _SelectNavSuccess;
  // This state is use to notice Beamer to beam to selected pages.
  const factory HomeState.tapNavSuccess({
    required List<HomeNav> navs,
    required int navIndex,
  }) = _TapNavSuccess;
}
