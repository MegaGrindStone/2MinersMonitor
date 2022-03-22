import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workers_event.dart';
part 'workers_state.dart';
part 'workers_bloc.freezed.dart';

class WorkersBloc extends Bloc<WorkersEvent, WorkersState> {
  WorkersBloc() : super(const _Initial(tabIndex: 0)) {
    on<_TabTapped>(_onTabTapped);
  }

  void _onTabTapped(_TabTapped event, Emitter<WorkersState> emit) {
    emit(_TabIndexChangeSuccess(tabIndex: event.tabIndex));
  }
}
