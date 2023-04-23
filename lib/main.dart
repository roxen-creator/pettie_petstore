import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:pettie_petstore/src/features/authentication/screens/login/login_screen.dart';
import 'package:pettie_petstore/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';


import 'package:pettie_petstore/src/utis/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: PAppTheme.darkTheme,
      theme: PAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(microseconds: 500),
      home: const OnBoardingScreen(),
    );
  }
}


