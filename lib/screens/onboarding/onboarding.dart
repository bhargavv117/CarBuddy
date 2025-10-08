import 'package:car_buddy/resources/app_assets.dart';
import 'package:car_buddy/resources/app_colors.dart';
import 'package:car_buddy/utils/routes/routes.dart';
import 'package:car_buddy/widgets/common_swipe_button.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 100,
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CarBuddy",
                    style: TextStyle(
                      color: AppColors.darkMaroon,
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                    ),
                    ),Text("CarBuddy – Door-to-door car servicing with real-time mechanic tracking for a hassle-free experience.",
                    style: TextStyle(
                      color: AppColors.deepRed,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
              )),
            Center(child: Hero(tag: "car-animation",
            child: Image.asset(AppAssets.car,))),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Center(
                child: CommonSwipeButton(
                  width: MediaQuery.of(context).size.width * 0.8,
                  mes: "Swipe for start ",
                  onSwipe: () => Navigator.pushReplacementNamed(context, Routes.login),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}