import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vupdate/screens/onboardings/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2), (){
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const OnboardingScreen())));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover)
        ),
      ),
    );
  }
}