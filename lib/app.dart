import 'package:crufty_bay/ui/utility/app_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crufty_bay/ui/screens/splashScreen.dart';
import 'package:crufty_bay/ui/utility/app_colors.dart';
import 'package:get/get.dart';


class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeDAta.lightThemeData,
      home: const SplashScreen(),
    );
  }
}
