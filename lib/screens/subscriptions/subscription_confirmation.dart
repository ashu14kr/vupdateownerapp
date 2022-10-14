import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/login/login.dart';

class SubscriptionConfirmationScreen extends StatelessWidget {
  const SubscriptionConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: size.height / 14,
            width: size.width / 1.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: maincolor),
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              "GO TO LOG IN SCREEN",
              style: TextStyle(
                  color: maincolor, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Confirmation"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height / 10,
          ),
          Container(
            height: size.height / 2.5,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/done.png"))),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: size.height / 15,
              width: size.width,
              color: Colors.transparent,
              child: const Text(
                "Your UserID and password is sent to your mail",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
