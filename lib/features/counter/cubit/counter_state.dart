import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  final bool isLoading;
  final String? errorMessage;
  final DateTime? lastUpdated;
  final bool isButtonEnabled;

  const CounterState({required this.counter, required this.isLoading, this.errorMessage, this.lastUpdated, required this.isButtonEnabled});

  CounterState copyWith({int? counter, bool? isLoading, String? errorMessage, DateTime? lastUpdated, bool? isButtonEnabled}) {
    return CounterState(
      counter: counter ?? this.counter,
      isLoading: isLoading ?? this.isLoading,
      isButtonEnabled: isButtonEnabled ?? this.isButtonEnabled,
      errorMessage: errorMessage ?? this.errorMessage,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
  @override
  List<Object?> get props => [counter, isLoading, errorMessage, lastUpdated, isButtonEnabled];
}
