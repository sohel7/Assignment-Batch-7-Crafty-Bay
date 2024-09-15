import 'package:crufty_bay/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeDAta{
  static ThemeData lightThemeData = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryColor
    ),
    primarySwatch:MaterialColor(AppColors.primaryColor.value, AppColors.colorSwatch),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          )
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          )
      ),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color:Colors.red
          )
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color:AppColors.primaryColor
          )
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 14),
          textStyle: const TextStyle(
              color: Colors.white
          ),
        )
    ),
  );
}