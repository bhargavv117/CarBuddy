import 'package:car_buddy/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class CommonSwipeButton extends StatelessWidget {
  final void Function()? onSwipe;
  final Color? activeThumbColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final String? mes;
  final Widget? child;
  final double? width;
  const CommonSwipeButton({super.key, this.onSwipe, this.activeThumbColor, this.activeTrackColor, this.inactiveThumbColor, this.inactiveTrackColor, this.mes, this.child, this.width});

  @override
  Widget build(BuildContext context) {
    return SwipeButton(
      width: width ?? MediaQuery.of(context).size.width*0.8,
      thumb: const Icon(
        Icons.double_arrow_rounded,
        color: Colors.white,
      ),
      // The color of the button thumb and track when active
      activeThumbColor: activeThumbColor ?? AppColors.deepRed,
      activeTrackColor: activeTrackColor ??  Colors.grey.shade300,

      // The color of the button thumb and track when inactive
      inactiveThumbColor: inactiveThumbColor ?? AppColors.deepRed,
      inactiveTrackColor: inactiveTrackColor ??  Colors.grey.shade300,

      // The border radius of the button
      borderRadius: BorderRadius.circular(40),
      height: 70,

      // The callback function that is called when the swipe is successful
      onSwipe: onSwipe,
       child: child ??  
       Text(
      mes ?? "Swipe ",
      style:  const TextStyle(
        color: Colors.black54,
        fontSize: 18,
      ),),
    );
  }
}