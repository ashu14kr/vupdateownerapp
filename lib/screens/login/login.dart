import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/Navigation/navigation.dart';
import 'package:vupdate/screens/login/forgotpassword/forgotpassword.dart';
import 'package:vupdate/screens/registration/registration.dart';
import 'package:vupdate/widgets/custom_button.dart';
import 'package:vupdate/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController fullname  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
              Color.fromARGB(208, 135, 201, 255),
              Color.fromARGB(23, 109, 161, 250)
            ])
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 15,
                ),
                Container(
                  height: size.height / 6,
                  width: size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"))),
                ),
                SizedBox(
                  height: size.height / 20,
                ),
                Text(
                  "LOGIN",
                  style: TextStyle(
                      color: maincolor, fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: size.height / 60,
                ),
                Container(
                  height: size.height / 15,
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(216, 33, 149, 243)),
                      borderRadius: BorderRadius.circular(12)),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: CustomtextField(hint: "User ID", color: Color.fromARGB(117, 33, 149, 243), text: fullname,),
                  ),
                ),
                SizedBox(
                  height: size.height / 60,
                ),
                Container(
                  height: size.height / 15,
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(216, 33, 149, 243)),
                      borderRadius: BorderRadius.circular(12)),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: CustomtextField(hint: "Password", color: Color.fromARGB(117, 33, 149, 243), text: fullname,),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: true,
                            onChanged: (value) {
                              setState(() {
                                value == false ? true : false;
                              });
                            }),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                              color: maincolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: maincolor,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 20,
                ),
                CustomButtom(name: "LOG IN", onClick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationScreen()));
                }),
                SizedBox(
                  height: size.height / 10,
                ),
                Text(
                  "Don’t have account? ",
                  style: TextStyle(
                      color: maincolor,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                SizedBox(
                  height: size.height / 40,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));
                  },
                  child: Container(
                    height: size.height / 14,
                    width: size.width / 1.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(24)),
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
