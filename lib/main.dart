import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test_app/features/auth/login/cubit/login_cubit.dart';
import 'package:flutter_bloc_test_app/features/auth/login/view/login_view.dart';

// import 'features/counter/cubit/counter_cudit.dart';
// import 'features/counter/view/counter_page.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => LoginCubit(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

