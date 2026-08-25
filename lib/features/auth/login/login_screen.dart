import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/widgets/auth_header.dart';
import 'package:forge/features/auth/login/widgets/button_login.dart';
import 'package:forge/features/auth/login/widgets/forget_password.dart';
import 'package:forge/features/auth/login/widgets/login_form.dart';
import 'package:forge/features/auth/login/widgets/sign_up_button.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const AuthHeader(
                      title: 'Welcome Back',
                      dec: 'Log in to continue your fitness journey',
                    ),
                    SizedBox(height: 50.h),
                    LoginForm(formkey: formkey),
                    const ForgetPassord(),
                    ButtonLogin(formkey: formkey),
                    const Spacer(),
                    const SignUpButton(),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
