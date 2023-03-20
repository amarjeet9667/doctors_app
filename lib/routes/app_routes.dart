import 'package:doctors_clinic/bottomnav/bottom_nav.dart';
import 'package:doctors_clinic/home_view/home_view.dart';
import 'package:doctors_clinic/login_view/login_view.dart';
import 'package:doctors_clinic/login_view/option.dart';
import 'package:doctors_clinic/login_view/otp_view.dart';
import 'package:doctors_clinic/login_view/signup.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String Option = '/';
  static const String Login_view = 'login';
  static const String Otp_view = '/otp';
  static const String Home_view = '/home';
  static const String Bottom_nav = '/nav';
  static const String Signup = '/signup';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Login_view:
        return MaterialPageRoute(builder: (context) => const LoginView());

      case Otp_view:
        return MaterialPageRoute(builder: (context) => const OTPPage());

      case Home_view:
        return MaterialPageRoute(builder: (context) => const HomeView());

      case Bottom_nav:
        return MaterialPageRoute(builder: (context) => const BottomNav());

      case Signup:
        return MaterialPageRoute(builder: (context) => const SignupView());

      case Option:
        return MaterialPageRoute(builder: (context) => const OptionView());

      default:
        throw const FormatException("Route not found! check route again!");
    }
  }
}
