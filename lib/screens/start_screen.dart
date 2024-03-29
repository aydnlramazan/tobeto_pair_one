import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one/blocs/auth_bloc/auth_state.dart';
import 'package:tobeto_pair_one/screens/auth_screen.dart';
import 'package:tobeto_pair_one/widget/my_app.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is Authenticated) return MyApp();
      return const AuthScreen();
    });
  }
}
