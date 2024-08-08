import 'package:flutter/material.dart';
import 'package:user_connect/constants/colors.dart';
import 'package:user_connect/view/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primeryColor,
      body: Center(
        child: Image.asset(
          "assets/logo/uc_logo.png",
          color: Colors.white,
          width: size.width * 0.2,
        ),
      ),
    );
  }

  goToHome(context) async {
    await Future.delayed(const Duration(seconds: 02));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }
}
