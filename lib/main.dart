import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/firebase_options.dart';

import 'package:pettie_petstore/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';




import 'package:pettie_petstore/src/repository/authentication_repository/authentication_repository.dart';


import 'package:pettie_petstore/src/utis/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
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


