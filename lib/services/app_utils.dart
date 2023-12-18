import 'package:f_store/providers/dart_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class AppUtils {
  BuildContext context;
  AppUtils(this.context);

  bool get getTheme => Provider.of<DarkThemeProvider>(context).darkTheme;
  Color get color => getTheme ? Colors.white : Colors.black;
  Size get getScreenSize => MediaQuery.of(context).size; 
}