import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_event.dart';
part 'rewards_state.dart';
part 'rewards_bloc.freezed.dart';

class RewardsBloc extends Bloc<RewardsEvent, RewardsState> {
  RewardsBloc() : super(const _Initial(tabIndex: 0)) {
    on<_TabTapped>(_onTabTapped);
  }

  void _onTabTapped(_TabTapped event, Emitter<RewardsState> emit) {
    emit(_TabIndexChangeSuccess(tabIndex: event.tabIndex));
  }
}
