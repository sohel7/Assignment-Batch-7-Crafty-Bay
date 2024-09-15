import 'package:crufty_bay/ui/screens/email_veryfy_screen.dart';
import 'package:crufty_bay/ui/screens/main_button_nav_screen.dart';
import 'package:crufty_bay/ui/utility/assets_path.dart';
import 'package:crufty_bay/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  void moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 3),);
    Get.offAll(const MainButtonNavScreen());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crafty Bay'),
      ),
      body:  const Center(
        child: Column(
          children: [
            Spacer(),
           // Image.asset(AssetsPath.logo, width: 120,),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 8,),
            Text('Verson: 1.8'),
            SizedBox(height: 8,),

          ],
        )
      ),
    );
  }
}
