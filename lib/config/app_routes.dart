// ignore_for_file: constant_identifier_names

import 'package:tools/pages/edit_profile_page.dart';
import 'package:tools/pages/home_page.dart';
import 'package:tools/pages/login_page.dart';
import 'package:tools/pages/main_page.dart';
import 'package:tools/pages/profile_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => const MainPage(),
    '/profile': (context) => const ProfilePage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const profile = '/profile';
  static const edit_profile = '/edit_profile';
}
