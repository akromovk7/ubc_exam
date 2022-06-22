import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';
import 'package:ubc_app/screens/home/view/pages/auth/view/pages/forgot_pass.dart';
import 'package:ubc_app/screens/home/view/pages/auth/view/pages/otac_number.dart';
import 'package:ubc_app/screens/home/view/pages/auth/view/pages/reset_pass.dart';
import 'package:ubc_app/screens/home/view/pages/auth/view/pages/sign_up.dart';
import 'package:ubc_app/screens/home/view/pages/auth/view/pages/sing_in.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: authScaffold(),
    );
  }

  Scaffold authScaffold() => Scaffold(
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is SignUpState) {
              return SignUpView();
            } else if (state is SignInState) {
              return SignInView();
            } else if (state is ForgotState) {
              return ForgotPassView();
            } else if (state is OTACNumberState) {
              return OTACNumberView();
            } else if (state is ResetPasswordState) {
              return ResetPasswordView();
            } else {
              return SizedBox();
            }
          },
        ),
      );
}
