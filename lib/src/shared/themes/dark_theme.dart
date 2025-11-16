import 'package:flutter/material.dart';
import 'package:gif_search_app/src/shared/themes/text_styles.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Montserrat',
  primaryColor: Colors.grey[900],
  hintColor: Colors.amber,
  scaffoldBackgroundColor: Colors.grey[850],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: AppTextStyles.appBarTitle.copyWith(color: Colors.white),
  ),
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.bodyText.copyWith(color: Colors.white),
    bodyMedium: AppTextStyles.bodyText.copyWith(color: Colors.white70),
    titleLarge: AppTextStyles.titleText.copyWith(color: Colors.white),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber,
    textTheme: ButtonTextTheme.primary,
  ),
);
