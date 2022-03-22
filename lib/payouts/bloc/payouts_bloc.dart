import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payouts_event.dart';
part 'payouts_state.dart';
part 'payouts_bloc.freezed.dart';

class PayoutsBloc extends Bloc<PayoutsEvent, PayoutsState> {
  PayoutsBloc() : super(const _Initial(tabIndex: 0)) {
    on<_TabTapped>(_onTabTapped);
  }

  void _onTabTapped(_TabTapped event, Emitter<PayoutsState> emit) {
    emit(_TabIndexChangeSuccess(tabIndex: event.tabIndex));
  }
}
