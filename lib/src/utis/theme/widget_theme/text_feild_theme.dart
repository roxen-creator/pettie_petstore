import 'package:flutter/material.dart';

import 'package:pettie_petstore/src/constants/color_manager.dart';


class TextFormFieldTheme{
  TextFormFieldTheme._();


static InputDecorationTheme lightInputDecorationTheme =
const InputDecorationTheme(
  border: OutlineInputBorder(),
  prefixIconColor: cSecondaryColor,
  floatingLabelStyle: TextStyle(color: cSecondaryColor),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width:2 , color: cSecondaryColor),)
);

static InputDecorationTheme darktInputDecorationTheme =
const InputDecorationTheme(
  border: OutlineInputBorder(),
  prefixIconColor: cPrimaryColor,
  floatingLabelStyle: TextStyle(color: cPrimaryColor),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width:2 , color: cPrimaryColor),)
);

}