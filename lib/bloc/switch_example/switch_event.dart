

abstract class SwitchEvent {
  SwitchEvent();
  List<Object?> get props => [];
}

class EnableAndDisableNotification extends SwitchEvent {}

class SliderEvents extends SwitchEvent {
  double slider;
  SliderEvents({required this.slider});

  @override
  List<Object?> get props => [slider];
}

