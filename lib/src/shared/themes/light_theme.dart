import 'package:flutter/material.dart';
import 'package:gif_search_app/src/shared/themes/text_styles.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Montserrat',
  primaryColor: Colors.blue,
  hintColor: Colors.cyan,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: AppTextStyles.appBarTitle.copyWith(color: Colors.white),
  ),
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.bodyText.copyWith(color: Colors.black),
    bodyMedium: AppTextStyles.bodyText.copyWith(color: Colors.black87),
    titleLarge: AppTextStyles.titleText.copyWith(color: Colors.black),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);
