
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Auth_Screens/SigninScreen.dart';
import 'helpers/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  moveto() async {
    Future.delayed(
        const Duration(seconds: 4), () => {Get.to(() => const SignInScreen())});
  }

  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveto();
    // getTokken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.bg), fit: BoxFit.cover),
        ),
        child: Center(
            child: Image(
          image: AssetImage(AppImages.logowhite),
          height: Get.height * 0.25,
        )),
      ),
    );
  }
}
