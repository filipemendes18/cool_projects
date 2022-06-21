import 'package:flutter/material.dart';
import 'package:password_manager/shared/themes/app_colors.dart';
import 'package:password_manager/shared/themes/app_images.dart';
import 'package:password_manager/shared/themes/app_text_styles.dart';
import 'package:password_manager/shared/widgets/social_login_button/social_login_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.36,
              width: size.width,
              color: AppColors.primary,
            ),
            Positioned(
              left: 36,
              top: 108,
              right: 278,
              bottom: 436,
              child: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                    color: AppColors.secondaryText,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Icon(
                    Icons.fingerprint,
                    color: AppColors.textWhite,
                    size: 24,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 269,
              top: 45,
              right: 45,
              bottom: 500,
              child: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                    color: AppColors.secondaryText,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Icon(
                    Icons.security,
                    color: AppColors.textWhite,
                    size: 24,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 46,
              top: 75,
              right: 46,
              child: Image.asset(AppImages.logoFull),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: size.height * 0.03,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        'Gerencie, salve e proteja suas senhas em um só lugar.',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.loginPageTitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 25, right: 40),
                      child: LoginButton(() {}),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
