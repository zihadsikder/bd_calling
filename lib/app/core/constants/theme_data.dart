import 'package:flutter/material.dart';

import '../confiq/app_colors.dart';
import 'app_text_style.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(

    primaryColor: Colors.green,

    primarySwatch: Colors.green,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.screenBgColor,
      titleTextStyle: AppTextStyle.headerTextStyle(),
    ),

    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(8.0),
      ),
      tileColor: AppColors.bgColor,
    ),
    cardTheme: CardTheme(
      //color: Colors.green.shade50,
      color: AppColors.bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:  ElevatedButton.styleFrom(
      backgroundColor: AppColors.secondaryColor,
      foregroundColor: AppColors.bgColor,
      padding: const EdgeInsets.symmetric( vertical: 12),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),
      elevation: 5,
        minimumSize: const Size(240, 48),
    ),
    )
  );
}