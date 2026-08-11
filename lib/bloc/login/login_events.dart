
import 'package:equatable/equatable.dart';

abstract class LoginEvents extends Equatable {
  @override
  List<Object?> get props =>  [];
}

class LoginUserEvent extends LoginEvents {
  final String username;
  final String password;

  LoginUserEvent({required this.username, required this.password});

}