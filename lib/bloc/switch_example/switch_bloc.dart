

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_test_app/bloc/switch_example/switch_event.dart';
import 'package:flutter_bloc_test_app/bloc/switch_example/switch_states.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchStates>{

  SwitchBloc() : super(SwitchStates()) {
    on<EnableAndDisableNotification>(_enableAndDisableNotification);
    on<SliderEvents>(_sliderEvents);
  }

  void _enableAndDisableNotification(EnableAndDisableNotification events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _sliderEvents(SliderEvents events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(sliderValue: events.slider));
  }

}