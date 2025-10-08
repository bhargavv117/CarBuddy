import 'package:flutter/material.dart';

/// Colors extracted from the provided image palette.
class AppColors {
  // --- Suggested Theme Colors ---
  // You can use these for a direct replacement in your theme.
  static const Color primaryColor = Color(0xFFFCA300);     // A bright, attention-grabbing golden orange
  static const Color secondaryColor = Color(0xFFE54D02);   // A strong reddish-orange for accents
  static const Color backgroundColor = Color(0xFF110515);   // The darkest color for a deep background

  // --- Full Palette ---
  // The complete set of colors from the image, from dark to light.
  static const Color deepPlum = Color(0xFF110515);
  static const Color darkMaroon = Color(0xFF2F0918);
  static const Color deepRed = Color(0xFF530F13);
  static const Color rusticRed = Color(0xFF8B150D);
  static const Color vibrantRed = Color(0xFFC42106);
  static const Color burntOrange = Color(0xFFE54D02);
  static const Color brightOrange = Color(0xFFF37A00);
  static const Color goldenOrange = Color(0xFFFCA300);
  static const Color goldenYellow = Color(0xFFFFC100);
  static const Color vibrantYellow = Color(0xFFFFD908);

  // --- Utility Colors ---
  // Standard colors that are always useful.
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color glassEffectColor = Color(0x1FFFFFFF); // Kept from original
  static const Color textColor = Color(0xFFFFFFFF); // For primary text on dark backgrounds
  static const Color hintColor = Color(0x99FFFFFF); // For hint text (white with opacity)
  static const Color borderColor = Color(0x4DFFFFFF); // A subtle border for dark UI (white with 30% opacity)
}

