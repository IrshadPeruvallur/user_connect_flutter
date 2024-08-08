import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_connect/constants/colors.dart';
import 'package:user_connect/controller/search_controller.dart';
import 'package:user_connect/controller/user_controller.dart';
import 'package:user_connect/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserController()),
        ChangeNotifierProvider(create: (context) => FilterController())
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
