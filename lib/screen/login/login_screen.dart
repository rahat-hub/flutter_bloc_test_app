
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test_app/bloc/login/login_bloc.dart';
import 'package:flutter_bloc_test_app/bloc/login/login_state.dart';

import 'package:flutter_bloc_test_app/bloc/login/login_events.dart';
import 'package:flutter_bloc_test_app/screen/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.isLoginSuccess != current.isLoginSuccess,
      listener: (context, state) {
        if(state.isLoginSuccess) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Login', style: TextStyle(color: Colors.white)),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                // Email
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: 'Email'
                  ),
                ),
                // Password
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: 'Password'
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: (){
                      context.read<LoginBloc>().add(LoginUserEvent(username: _emailController.text, password: _passwordController.text));
                    },
                    child: BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
                      builder: (context, state){

                        if(state.isLoading){
                          return CircularProgressIndicator(color: Colors.white);
                        }
                        else {
                          return Text('Login', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600));
                        }
                      },
                    )
                ),

                // BlocBuilder<LoginBloc, LoginState>(
                //   builder: (context, state) {
                //     return ElevatedButton(
                //       onPressed: state.isLoading
                //           ? null
                //           : () {
                //         context.read<LoginBloc>().add(
                //           LoginUserEvent(
                //             username: _emailController.text,
                //             password: _passwordController.text,
                //           ),
                //         );
                //       },
                //       child: state.isLoading
                //           ? CircularProgressIndicator(color: Colors.white)
                //           : Text(
                //         'Login',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     );
                //   },
                // )

              ],
            ),
          )
      ),
    );
  }
}
