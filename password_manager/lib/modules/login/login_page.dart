import 'package:flutter/material.dart';
import 'package:password_manager/shared/themes/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(193),
        child: Container(
          height: 193,
          color: AppColors.primary,
          child: Row(
            children: [
              Positioned(
                left: 36,
                top: 96,
                right: 51,
                bottom: 278,
                child: Container(
                  height: 46,
                  width: 46,
                  color: AppColors.secondaryText,
                  child: const Center(
                    child: Icon(Icons.fingerprint, color: AppColors.textWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
