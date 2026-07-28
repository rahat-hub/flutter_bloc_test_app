
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void onUsernameChanged(String username) {
    emit(
      state.copyWith(
        username: username,
      ),
    );
  }
  void onPasswordChanged(String password) {
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }
  void onRememberMeChanged(bool value) {
    emit(
      state.copyWith(
        rememberMe: value,
      ),
    );
  }

  Future<void> login() async {
    emit(state.copyWith(
      isLoading: true,
      isSuccess: false,
      errorMessage: null,
    ));

    final bool success = await LoginRepository().login(
      username: state.username,
      password: state.password
    );
    if (success) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        errorMessage: null,
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: 'Login failed',
      ));
    }
  }
}