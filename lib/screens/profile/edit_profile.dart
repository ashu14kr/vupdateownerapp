import 'package:flutter/material.dart';
import 'package:vupdate/widgets/custom_textfield.dart';

import '../../constant.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController fullname  = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height/20,),
              const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVzc2luZXNzJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                  radius: 60,
                ),
              ),
              SizedBox(height: size.height/20,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Full Name: Daniel", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Company Name", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Designation: Project Manager", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Address", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "City/state", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Country", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Mobile Number", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "E-Mail address", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/40,),
              Container(
                height: size.height/15,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomtextField(hint: "Number of Employee", color: Colors.grey, text: fullname,),
                ),
              ),
              SizedBox(height: size.height/20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SAVE", style: TextStyle(color: maincolor, fontSize: 20),),
                    Container(
                      height: size.height/17,
                      width: size.width/4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: maincolor,
                        borderRadius: BorderRadius.circular(24)
                      ),
                      child: const Text("CONFIRM", style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height/20,),
            ],
          ),
        ),
      ),
    );
  }
}
