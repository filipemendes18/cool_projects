import 'package:flutter/material.dart';
import 'package:password_manager/modules/favorites/favorites_page.dart';
import 'package:password_manager/modules/generator/generator_page.dart';
import 'package:password_manager/modules/home/home_page.dart';
import 'package:password_manager/modules/insert_password/insert_password_page.dart';
import 'package:password_manager/modules/login/login_page.dart';
import 'package:password_manager/modules/profile/profile_page.dart';
import 'package:password_manager/modules/splash/splash_page.dart';
import 'package:password_manager/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: AppColors.primary,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/favorites': (context) => const FavoritesPage(),
        '/generator': (context) => const GeneratorPage(),
        '/profile': (context) => const ProfilePage(),
        '/insert_password': (context) => const InsertPasswordPage(),
      },
    );
  }
}
