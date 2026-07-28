
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test_app/features/auth/login/cubit/login_cubit.dart';

import '../cubit/login_state.dart';
import '../widgets/username_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (BuildContext context, LoginState state){},
        builder: (BuildContext context,LoginState state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  /// Username Text Field
                  UsernameField(
                    onChanged: (value) => context.read<LoginCubit>().onUsernameChanged(value)
                  ),

                  /// Password Text Field
                  TextField(
                    onChanged: (value) => context.read<LoginCubit>().onPasswordChanged(value),
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  /// Remember me Password Field
                  CheckboxListTile(
                    title: const Text("Remember Me"),
                    value: state.rememberMe,
                    onChanged: (value) {
                      context.read<LoginCubit>().onRememberMeChanged(value ?? false);
                    },
                  ),


                  /// Login Button
                  ElevatedButton(
                    onPressed: state.isLoading ? null : () => context.read<LoginCubit>().login(),
                    child: state.isLoading ? SizedBox(width: 15, height: 15, child: const CircularProgressIndicator(strokeWidth: 2)) : const Text("Login"),
                  )
                ],
              ),
            )
          );
        }
      ),
    );
  }
}
