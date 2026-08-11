

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test_app/bloc/user/user_events.dart';
import 'package:flutter_bloc_test_app/bloc/user/user_state.dart';

import '../../data/repositories/get_user_repo.dart';
import '../../model/user_model.dart';

class UserBloc extends Bloc<UserEvents, UserState>{

  final GetUserRepo _getUserRepo = GetUserRepo();

  UserBloc() : super(UserState.initialState()) {
    on<LoadUserEvent>(_loadUser);
  }

  Future<void> _loadUser(LoadUserEvent event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      List<UserModel> users = await _getUserRepo.loadAllUser();
      emit(state.copyWith(users: users));
    } catch(e) {
      emit(state.copyWith(isLoading: false, users: []));
      throw Exception('Failed to load user: $e');
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

}
