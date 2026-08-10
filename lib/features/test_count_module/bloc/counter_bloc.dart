
import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterNewBlock extends Bloc<CounterNewEvent, CounterNewState> {

  CounterNewBlock() : super(CounterNewState()) {
    on<CounterNewIncrementEvent>(_onIncrement);
    on<CounterNewDecrementEvent>(_onDecrement);
  }

  void _onIncrement(CounterNewIncrementEvent event, Emitter<CounterNewState> emit) {

    emit(state.copyWith(counterNew: state.counterNew + 1));
  }

  void _onDecrement(CounterNewDecrementEvent event, Emitter<CounterNewState> emit) {
    emit(state.copyWith(counterNew: state.counterNew - 1));
  }

}