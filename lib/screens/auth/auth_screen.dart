import 'package:flutter/material.dart';
import 'package:justduit/screens/auth/signin_screen.dart';
import 'package:justduit/screens/auth/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var activeScreen = 'signup-screen';

  void switchScreen() {
    if (activeScreen == 'signup-screen') {
      setState(() {
        activeScreen = 'signin-screen';
      });
    } else {
      setState(() {
        activeScreen = 'signup-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (activeScreen == 'signup-screen') {
      screen = SignupScreen(
        onSigninClickHandler: switchScreen,
      );
    } else {
      screen = SigninScreen(
        onSignupClickHandler: switchScreen,
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF6F8FB),
      body: SafeArea(
        child: screen,
      ),
    );
  }
}
