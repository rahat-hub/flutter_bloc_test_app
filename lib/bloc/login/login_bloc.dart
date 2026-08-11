
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../../data/repositories/auth_repo.dart';
import 'package:flutter_bloc_test_app/bloc/login/login_state.dart';
import 'package:flutter_bloc_test_app/bloc/login/login_events.dart';

class LoginBloc extends Bloc<LoginEvents, LoginState> {

  final AuthRepo _authRepo = AuthRepo();
  LoginBloc() : super(LoginState.initialState()) {
    on<LoginUserEvent>(_loginUser);
  }

  Future<void> _loginUser(LoginUserEvent event, Emitter<LoginState> emit) async {
    try {
      /// Start Loading

      emit(state.copyWith(isLoading: true, isLoginSuccess: false));

      /// Login User

      final Response response = await _authRepo.loginUser(username: event.username, password: event.password);

      if(response.statusCode == 200) {
        emit(state.copyWith(isLoading: false, isLoginSuccess: true));
      } else {
        emit(state.copyWith(isLoading: false, isLoginSuccess: false));
      }

    } catch(e) {
      throw Exception('Failed to login: $e');
    }
  }

}