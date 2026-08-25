import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formkey;
  const new({super.key, required this.formkey});
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool hiddenPassword = true;
  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: widget.formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                style: TextStyle(color: ColorManager.lightGrey),
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyles.font15LightGreyRegularWeight,
                  filled: true,
                  fillColor: ColorManager.eerieBlack,
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: ColorManager.lightGrey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                obscureText: hiddenPassword,
                style: TextStyle(color: ColorManager.lightGrey),
                controller: passController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyles.font15LightGreyRegularWeight,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
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
                  prefixIconColor: ColorManager.lightGrey,
                  filled: true,
                  fillColor: ColorManager.eerieBlack,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
