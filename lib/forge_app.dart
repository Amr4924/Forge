import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/routing/app_router.dart';
import 'package:forge/core/routing/router.dart';
import 'package:forge/core/theming/color.dart';

class ForgeApp extends StatelessWidget {
  final AppRouter appRouter;
  const ForgeApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorManager.redMain,
          scaffoldBackgroundColor: ColorManager.blackBackground,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
