import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/widgets/auth_header.dart';
import 'package:forge/features/auth/sign_up/widgets/button_sign_up.dart';
import 'package:forge/features/auth/sign_up/widgets/have_an_account.dart';
import 'package:forge/features/auth/sign_up/widgets/sign_up_form.dart';
import 'package:forge/features/auth/sign_up/widgets/terms_and_conditions_checkbox.dart';

class SignUpScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                      title: 'Create Account',
                      dec: 'Start your fitness journey today',
                    ),
                    SizedBox(height: 50.h),
                    SignUpForm(formKey: formKey),
                    const TearmAndCondtionsBox(),
                    ButtonSignUp(fromKey: formKey),
                    const Spacer(),
                    const HaveAnAccount(),
                    SizedBox(height: 16.r),
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
