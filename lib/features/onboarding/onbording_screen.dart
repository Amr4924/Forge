import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/routing/router.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';
import 'package:forge/features/onboarding/widgets/onboarding_continer_page.dart';
import 'package:forge/features/onboarding/widgets/skip_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const new({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController control = PageController();
  final int countpage = 3;
  bool isLastPage = false;

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                isLastPage = value == (countpage - 1);
              });
            },
            controller: control,
            children: [
              OnboardingContinerPage(
                isLastPage: isLastPage,
                svgIcon: 'assets/svgs/fire_icon.svg',
                textTitlePage: 'TRANSFORM\nYOUR BODY',
                textDesPage: 'Personalized workouts and real results.\nYour fitness journey starts now.',
              ),
              OnboardingContinerPage(
                isLastPage: isLastPage,
                svgIcon: 'assets/svgs/progress_icon.svg',
                textTitlePage: 'TRACK YOUR\nPROGRESS',
                textDesPage: 'Monitor your gains, streaks, and stats\nevery step of the way.',
              ),
              OnboardingContinerPage(
                isLastPage: isLastPage,
                svgIcon: 'assets/svgs/dumbbell_icon.svg',
                textTitlePage: 'YOUR BEST\nSELF AWAITS',
                textDesPage:
                    "Join thousands who transformed their\nlives. Let's begin.",
              ),
            ],
          ),
          Positioned(
            top: 50,
            right: 5,
            child: !isLastPage ? SkipButton() : SizedBox.shrink(),
          ),
          Positioned(
            bottom: 160.h,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: control, // PageController
                count: countpage,
                effect: ExpandingDotsEffect(
                  dotColor: Color(0xff1B1B1D),
                  dotWidth: 8.w,
                  dotHeight: 8.h,
                  activeDotColor: ColorManager.redMain,
                ), // your preferred effect
              ),
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 0,
            right: 0,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 342.w,
                  height: 56.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.redMain,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    onPressed: () {
                      if (!isLastPage) {
                        control.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushNamed(context, Routes.logingScreen);
                      }
                    },
                    child: Text(
                      !isLastPage ? 'Next' : 'Get Started',
                      style: TextStyles.fontInter16WhiteBold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
