import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test_app/bloc/user/user_state.dart';
import 'package:flutter_bloc_test_app/model/user_model.dart';

import '../../bloc/user/user_bloc.dart';
import '../../bloc/user/user_events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(LoadUserEvent()),
      child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.blue, title: Text('Home Screen'), centerTitle: true),
          // body: SingleChildScrollView(
          //   child: BlocBuilder<UserBloc, UserState>(
          //     buildWhen: (previous, current) => previous.isLoading != current.isLoading || previous.users != current.users,
          //     builder: (context, state) {
          //       if (state.isLoading) return Center(child: CircularProgressIndicator());
          //       return Card(child: Column(spacing: 10, children: [Text('User Name: ${state.users[0].firstName} ${state.users[0].lastName}'), Text('User Id: ${state.users[0].id}')]));
          //     },
          //   ),
          // ),
          body: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              }
              else if (state.users.isEmpty) {
                return Center(child: Text('No User Found'));
              }
              else {
                List<UserModel> users = state.users;
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    UserModel user = users[index];
                    return ListTile(
                      leading: Text(user.id.toString()),
                      title: Text(user.firstName),
                      subtitle: Text(user.lastName),
                    );
                  },
                );
              }
            },
          )
      ),
    );
  }
}
