
import 'package:flutter/material.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

import '../widget/app_bar.dart';

class Wishlist extends StatelessWidget {
  static const String routeName ='/';
  static Route route(){

    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const Wishlist(),

    );
   
  }
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
   

    return const Scaffold(
      //CustomAppBar
      appBar:MyAppBar(title: 'Wishlist'),
      bottomNavigationBar: NavBar(),
    );
  }
}
