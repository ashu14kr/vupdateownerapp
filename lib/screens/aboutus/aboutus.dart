import 'package:flutter/material.dart';

import '../../constant.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "About US",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: size.height/20,),
            Container(
              height: size.height/7,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(image: AssetImage("assets/images/logo.png"))
              ),
            ),
            SizedBox(height: size.height/30,),
            SizedBox(
              height: size.height/15,
              width: size.width,
              child: const Text("V Update is  Employee management and Task management app", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 17),)
            )
          ],
        ),
      ),
    );
  }
}