import 'package:equatable/equatable.dart';

class CounterNewState extends Equatable{

  final int counterNew;

  const CounterNewState({this.counterNew = 0});

  @override
  List<Object?> get props => [counterNew];

  CounterNewState copyWith({int? counterNew}) => CounterNewState(counterNew: counterNew ?? this.counterNew);

}