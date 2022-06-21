import 'package:flutter/material.dart';
import 'package:password_manager/shared/themes/app_colors.dart';
import 'package:password_manager/shared/themes/app_images.dart';
import 'package:password_manager/shared/themes/app_text_styles.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const LoginButton(this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.textWhite,
            borderRadius: BorderRadius.circular(5),
            border:
                const Border.fromBorderSide(BorderSide(color: AppColors.grey))),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset(AppImages.googleLogo),
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: Colors.grey.shade100,
                    )
                  ],
                )),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Entrar com Google',
                    style: AppTextStyles.login,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
