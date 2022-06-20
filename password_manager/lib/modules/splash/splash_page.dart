import 'package:flutter/material.dart';
import 'package:password_manager/shared/themes/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset(
          'assets/images/lock_gif.gif',
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
