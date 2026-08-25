import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';

class SignUpForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const new({super.key, required this.formKey});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool hiddenPassword = true;
  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: widget.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              style: TextStyle(color: ColorManager.lightGrey),

              controller: fullNameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_3_outlined),
                prefixIconColor: ColorManager.lightGrey,
                hintText: 'Full Name',
                hintStyle: TextStyles.font15LightGreyRegularWeight,
                filled: true,
                fillColor: ColorManager.eerieBlack,
                contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            TextFormField(
              style: TextStyle(color: ColorManager.lightGrey),
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                prefixIconColor: ColorManager.lightGrey,
                hintText: 'Email',
                hintStyle: TextStyles.font15LightGreyRegularWeight,
                filled: true,
                fillColor: ColorManager.eerieBlack,
                contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            TextFormField(
              style: TextStyle(color: ColorManager.lightGrey),
              controller: passwordController,
              obscureText: hiddenPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline_rounded),
                prefixIconColor: ColorManager.lightGrey,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hiddenPassword = !hiddenPassword;
                    });
                  },
                  icon: Icon(
                    hiddenPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off,
                  ),
                ),
                suffixIconColor: ColorManager.lightGrey,
                hintText: 'Password',
                hintStyle: TextStyles.font15LightGreyRegularWeight,
                filled: true,
                fillColor: ColorManager.eerieBlack,
                contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
