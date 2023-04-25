import 'package:flutter/material.dart';


class DashboardCategories{
final String title;
final String heading;
final String subHeading;
final VoidCallback? onPress;

DashboardCategories(this.title, this.heading, this.subHeading, this.onPress);


static List<DashboardCategories> list = [
  DashboardCategories('Dog', 'dog supplies', 'dog food',null),
  
 DashboardCategories('Dog', 'dog supplies', 'dog food',null),
  DashboardCategories('Dog', 'dog supplies', 'dog food',null),
   DashboardCategories('Dog', 'dog supplies', 'dog food',null),


];



}