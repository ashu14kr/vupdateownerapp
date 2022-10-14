import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/controller/auth/register_owner.dart';
import 'package:vupdate/screens/subscriptions/subscriptions.dart';
import 'package:vupdate/util/media.dart';

import '../../widgets/custom_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final authController = Get.put(OwnerAuthController());
  TextEditingController fullname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cname = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController noofemployees = TextEditingController();
  File? img;
  File? gst;
  File? pan;
  File? adhr;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Register your Account"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height / 20,
              ),
              TextFieldNew(
                size: size,
                hint: 'Full Name',
                color: Colors.grey,
                text: fullname,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'User name',
                color: Colors.grey,
                text: username,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Password',
                color: Colors.grey,
                text: password,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Company Name',
                color: Colors.grey,
                text: cname,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Designation',
                color: Colors.grey,
                text: designation,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Address',
                color: Colors.grey,
                text: address,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'City/state',
                color: Colors.grey,
                text: city,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Country',
                color: Colors.grey,
                text: country,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Mobile Number',
                color: Colors.grey,
                text: mobileno,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'E-Mail address',
                color: Colors.grey,
                text: email,
              ),
              SizedBox(
                height: size.height / 50,
              ),
              TextFieldNew(
                size: size,
                hint: 'Number of Employee',
                color: Colors.grey,
                text: noofemployees,
              ),
              SizedBox(
                height: size.height / 30,
              ),
              Center(
                child: Text(
                  "Upload  copy of below mentioned certificates/ID",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: maincolor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Your Photo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        InkWell(
                          onTap: () async {
                            selectimg(img);
                          },
                          child: Container(
                            height: size.height / 20,
                            width: size.width / 3.5,
                            decoration: BoxDecoration(
                                color: maincolor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.upload,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Upload",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "GST Certification",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        InkWell(
                          onTap: (){
                            selectimg(gst);
                          },
                          child: Container(
                            height: size.height / 20,
                            width: size.width / 3.5,
                            decoration: BoxDecoration(
                                color: maincolor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.upload,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Upload",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Pan Card",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        InkWell(
                          onTap: (){
                            selectimg(pan);
                          },
                          child: Container(
                            height: size.height / 20,
                            width: size.width / 3.5,
                            decoration: BoxDecoration(
                                color: maincolor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.upload,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Upload",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Aadhar Card",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        InkWell(
                          onTap: (){
                            selectimg(adhr);
                          },
                          child: Container(
                            height: size.height / 20,
                            width: size.width / 3.5,
                            decoration: BoxDecoration(
                                color: maincolor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.upload,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Upload",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SAVE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SubscriptionScreen()));
                      },
                      child: Container(
                        height: size.height / 14,
                        width: size.width / 2.3,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.circular(24)),
                        child: const Text(
                          "CONFIRM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldNew extends StatelessWidget {
  const TextFieldNew({
    Key? key,
    required this.size,
    required this.hint,
    required this.color,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String hint;
  final Color color;
  final TextEditingController text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 15,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: CustomtextField(
          hint: hint,
          color: color,
          text: text,
        ),
      ),
    );
  }
}
