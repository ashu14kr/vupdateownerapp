import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/login/forgotpassword/resetpass.dart';
import 'package:vupdate/widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Enter your OTP"),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height / 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SizedBox(
              height: size.height / 10,
              width: size.width,
              child: const Center(
                child: Text(
                  "OTP is sent to your mail and mobile numbercustomer",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          PinCodeTextField(
            pinBoxHeight: size.height / 17,
            pinBoxWidth: size.width / 8,
            controller: controller,
            defaultBorderColor: Colors.grey,
            maxLength: 6,
          ),
          SizedBox(
            height: size.height / 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: size.height / 25,
              width: size.width,
              child: Stack(
                children: [
                  Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "OTP is valid only for 5 min",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Resent OTP",
                            style: TextStyle(color: maincolor),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height / 15,
          ),
          CustomButtom(name: "SUBMIT", onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
          })
        ],
      ),
    );
  }
}
