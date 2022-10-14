import 'package:flutter/material.dart';

import '../../constant.dart';

class OccuationDetailScreen extends StatelessWidget {
  const OccuationDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Birthday Jocob",
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
              height: size.height/5,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(height: size.height/60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.note_add, color: maincolor,),
                            SizedBox(width: size.width/40,),
                            Text("Add Note", style: TextStyle(color: maincolor),)
                          ],
                        ),
                        Text("Edit", style: TextStyle(color: maincolor, fontSize: 17),)
                      ],
                    ),
                    SizedBox(height: size.height/20,),
                    Text("Happy Birthday Jocob", style: TextStyle(color: maincolor, fontSize: 17),)
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height/40,),
            Container(
              height: size.height/15,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Date", style: TextStyle(color: Colors.black, fontSize: 16),),
                    Text("20-12-2022", style: TextStyle(color: Colors.black, fontSize: 16),)
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height/40,),
            Container(
              height: size.height/15,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Time", style: TextStyle(color: Colors.black, fontSize: 16),),
                    Text("9:45AM", style: TextStyle(color: Colors.black, fontSize: 16),)
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height/30,),
            Row(
              children: [
                Checkbox(value: true, onChanged: (val){}),
                Text("Send wishes through What’sapp", style: TextStyle(color: maincolor, fontSize: 16),)
              ],
            ),
            SizedBox(height: size.height/10,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
    );
  }
}