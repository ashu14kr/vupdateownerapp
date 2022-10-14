import 'package:flutter/material.dart';
import 'package:vupdate/widgets/custom_textfield.dart';

import '../../constant.dart';

class AddSubTaskScreen extends StatelessWidget {
  const AddSubTaskScreen({Key? key}) : super(key: key);

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
          "Add Sub Tasks",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 30,
            ),
            Container(
              height: size.height/15,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: CustomtextField(hint: "Sub-Task Name", color: Colors.grey, text: fullname,),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              height: size.height/6,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: CustomtextField(hint: "Description", color: Colors.grey, text: fullname,),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              height: size.height/15,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: const [
                    Text("Start Date", style: TextStyle(color: Colors.grey, fontSize: 15),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              height: size.height/15,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: const [
                    Text("End Date", style: TextStyle(color: Colors.grey, fontSize: 15),)
                  ],
                ),
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
                          fontSize: 17),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
                      },
                      child: Container(
                        height: size.height / 16,
                        width: size.width / 3,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.circular(24)),
                        child: const Text(
                          "+ CREATE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
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
    );
  }
}