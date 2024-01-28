import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nubi/bloc/user/user_bloc.dart';

import 'color_schemes.g.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      home: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/logo-comtel-nig.png', // Replace with your logo asset path
                      width: 100.0, // Adjust the width as needed
                      height: 100.0, // Adjust the height as needed
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Teladan by Comtelindo',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Loading... ',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is UserLoadSuccess) {
            // return state.user.id != 0
            //     ? state.user.is_new
            //         ? ResetPasswordPage()
            //         : MainPage(index: 0)
            //     : const LoginPage();
            return const Text("Hello");
          } else {
            // return MainPage(
            //   index: 0,
            //   error: true,
            // );
            return const Text("Hello");
          }
        },
      ),
    );
  }
}
