
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_test_app/model/user_model.dart';

class UserState extends Equatable {

  final bool isLoading;

  final List<UserModel> users;

  const UserState({required this.isLoading, required this.users});

  UserState copyWith({bool? isLoading, List<UserModel>? users}) => UserState(isLoading: isLoading ?? this.isLoading, users: users ?? this.users);
  static UserState initialState() => UserState(isLoading: true, users: []);

  @override
  List<Object?> get props => [isLoading, users];
}