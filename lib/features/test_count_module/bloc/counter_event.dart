
import 'package:equatable/equatable.dart';

abstract class CounterNewEvent extends Equatable{


  @override
  List<Object?> get props => [];
}

class CounterNewIncrementEvent extends CounterNewEvent {

}
class CounterNewDecrementEvent extends CounterNewEvent {}