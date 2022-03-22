part of 'workers_bloc.dart';

@freezed
class WorkersState with _$WorkersState {
  const factory WorkersState.initial({required int tabIndex}) = _Initial;
  const factory WorkersState.tabIndexChangeSuccess({required int tabIndex}) =
      _TabIndexChangeSuccess;
}
