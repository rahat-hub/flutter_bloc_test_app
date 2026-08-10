import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc_test_app/features/auth/login/cubit/login_cubit.dart';
// import 'package:flutter_bloc_test_app/features/auth/login/view/login_view.dart';
// import 'package:flutter_bloc_test_app/features/test_count_module/screen/home_screen_text.dart';
import 'package:flutter_bloc_test_app/screen/login/login_screen.dart';

// import 'features/test_count_module/bloc/counter_bloc.dart';

// import 'features/counter/cubit/counter_cudit.dart';
// import 'features/counter/view/counter_page.dart';

/*void main() {
  runApp(
    BlocProvider(
      create: (BuildContext context) => LoginCubit(),
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
}*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) => BlocProvider(
//     create: (context) => CounterNewBlock(),
//     child: MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true
//       ),
//       home: HomeScreenText(),
//     ),
//   );
// }

