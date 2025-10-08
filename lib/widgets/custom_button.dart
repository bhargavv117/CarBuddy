import 'package:car_buddy/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key, 
    required this.text, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Make button take full width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: AppColors.vibrantRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0, // A flatter look to match the UI
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16, 
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
