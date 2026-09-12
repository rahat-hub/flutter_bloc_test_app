
import 'package:equatable/equatable.dart';

class SwitchStates extends Equatable {
  final bool isSwitch;
  final double sliderValue;
  const SwitchStates({this.isSwitch = false, this.sliderValue = 1.0});

  SwitchStates copyWith({bool? isSwitch, double? sliderValue}) => SwitchStates(
    isSwitch: isSwitch ?? this.isSwitch,
    sliderValue: sliderValue ?? this.sliderValue,
  );

  @override
  List<Object?> get props => [isSwitch, sliderValue];
}