import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final bool isLoading;

  final bool isLoginSuccess;

  const LoginState({
    required this.isLoading,
    required this.isLoginSuccess
  });

  LoginState copyWith({
    bool? isLoading,
    bool? isLoginSuccess,
  }) => LoginState(
    isLoading: isLoading ?? this.isLoading,
    isLoginSuccess: isLoginSuccess ?? this.isLoginSuccess,
  );

  static LoginState initialState() => LoginState(isLoading: false, isLoginSuccess: false);

  @override
  List<Object?> get props => [isLoading, isLoginSuccess];
}