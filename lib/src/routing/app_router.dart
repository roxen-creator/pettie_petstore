import 'package:flutter/material.dart';

import '../features/core/screens/dashboard/dashboard.dart';


class AppRouter{
  static Route onGenerateRoute(
    RouteSettings settings){
    print("This is route: ${settings.name}");
    switch (settings.name){
      case'/': 
      return Dashboard.route();
    //   case Dashboard.routeName: return Dashboard.route();
    
    // case Cart.routeName:
    // return Cart.route();
    // case Wishlist.routeName:
    // return Wishlist.route();
    // case CatalogScreen.routeName:
    // return CatalogScreen.route(category: settings.arguments as Category);
    default:
    return _errorRoute();
    
    }
  }
  static Route _errorRoute(){
      return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_)=> Scaffold(appBar: AppBar(title:const Text('Error'),),

       ) );
  }
}