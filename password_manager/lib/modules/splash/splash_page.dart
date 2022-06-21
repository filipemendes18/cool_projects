import 'package:flutter/material.dart';
import 'package:password_manager/shared/themes/app_colors.dart';
import 'package:password_manager/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset(
          AppImages.logoGif,
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
