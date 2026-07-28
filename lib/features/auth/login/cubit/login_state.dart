import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String username;
  final String password;
  final bool rememberMe;
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  const LoginState({this.username = '', this.password = '', this.rememberMe = false, this.isLoading = false, this.isSuccess = false, this.errorMessage});

  LoginState copyWith({String? username, String? password, bool? rememberMe, bool? isLoading, bool? isSuccess, String? errorMessage}) => LoginState(
    username: username ?? this.username,
    password: password ?? this.password,
    rememberMe: rememberMe ?? this.rememberMe,
    isLoading: isLoading ?? this.isLoading,
    isSuccess: isSuccess ?? this.isSuccess,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [username, password, rememberMe, isLoading, isSuccess, errorMessage];
}
