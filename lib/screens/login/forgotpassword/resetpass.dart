import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/login/forgotpassword/successresetpass.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController fullname  = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Reset Your Password"),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 10,
            ),
            Container(
              height: size.height / 15,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: CustomtextField(
                  hint: "New password",
                  color: Colors.grey, 
                  text: fullname,
                ),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              height: size.height / 15,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: CustomtextField(
                  hint: "Enter Again",
                  color: Colors.grey, 
                  text: fullname,
                ),
              ),
            ),
            SizedBox(
              height: size.height / 2,
            ),
            CustomButtom(name: "Confirm", onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessResetPass()));
          })
          ],
        ),
      ),
    );
  }
}
