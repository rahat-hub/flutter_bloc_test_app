
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(
    const CounterState(
      counter: 0,
      isLoading: false,
      isButtonEnabled: true,
      errorMessage: null,
      lastUpdated: null,
    )
  );
  void increment() => emit(state.copyWith(counter: state.counter + 1));

  void decrement() {
    if(state.counter > 1 || state.counter == 1) {
      emit(state.copyWith(counter: state.counter - 1));
    }
  }
  void reset() => emit(state.copyWith(counter: 0));
}