import 'package:car_buddy/resources/app_assets.dart';
import 'package:car_buddy/resources/app_colors.dart';
import 'package:car_buddy/screens/signup/signup_screen.dart';
import 'package:car_buddy/widgets/custom_button.dart';
import 'package:car_buddy/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(tag: "car-animation", child: Image.asset(AppAssets.car)),
                const SizedBox(height: 24),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sign in to continue your journey.',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  hintText: 'Phone/Email',
                  controller: _emailController,
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                  icon: Icons.lock_outline,
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgotten Password?',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Hero(
                  tag: "button",
                  child: CustomButton(
                    text: 'Sign In',
                    onPressed: () {
                      // Handle sign in logic
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: AppColors.rusticRed,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 30),
                Hero(
                  tag: "social-buttons",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialButton(
                        'https://img.icons8.com/color/48/000000/google-logo.png',
                      ),
                      const SizedBox(width: 20),
                      _buildSocialButton(
                        'https://img.icons8.com/ios-filled/50/000000/mac-os.png',
                      ),
                      const SizedBox(width: 20),
                      _buildSocialButton(
                        'https://img.icons8.com/color/48/000000/facebook-new.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: AppColors.rusticRed),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: AppColors.rusticRed,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget to build social login buttons using images
  Widget _buildSocialButton(String imageUrl) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.borderColor, width: 1),
      ),
      child: Image.network(
        imageUrl,
        height: 24,
        width: 24,
        errorBuilder: (context, error, stackTrace) {
          // Fallback icon in case image fails to load
          return const Icon(Icons.error_outline, color: AppColors.hintColor);
        },
      ),
    );
  }
}
