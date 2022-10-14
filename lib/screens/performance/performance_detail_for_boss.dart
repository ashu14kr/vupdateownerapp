import 'package:flutter/material.dart';

import '../../constant.dart';
import '../Home/home.dart';

class PerformanceDetailBScreen extends StatelessWidget {
  const PerformanceDetailBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Performance Report",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height/30,),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1614252369475-531eba835eb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVzc2luZXNzJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    radius: 30,
                  ),
                  SizedBox(width: size.width/20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Wade", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
                      Text("Visual Designer", style: TextStyle(color: Color.fromARGB(255, 94, 94, 94), fontSize: 15, fontWeight: FontWeight.w300),),
                    ],
                  )
                ],
              ),
              SizedBox(height: size.height/60,),
              Divider(height: 0.5, thickness: 0.5, color: maincolor,),
              SizedBox(height: size.height/40,),
              Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LeadStatus(size: size),
                          LeadStatus(size: size),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LeadStatus(size: size),
                          LeadStatus(size: size),
                        ],
                      ),
                    ),
                SizedBox(height: size.height/40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('All Tasks', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: size.height/40,),
                Container(
                  height: size.height/10,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height/60,),
                        const Text('Start A Project meeting', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),),
                        const Text('Today-12:00 PM', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w300),),
                        Row(
                          children: [
                            Text('Status:', style: TextStyle(color: maincolor, fontSize: 15, fontWeight: FontWeight.w400),),
                            const Text('Completed', style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height/40,),
                Container(
                  height: size.height/10,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height/60,),
                        const Text('Start A Project meeting', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),),
                        const Text('Today-12:00 PM', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w300),),
                        Row(
                          children: [
                            Text('Status:', style: TextStyle(color: maincolor, fontSize: 15, fontWeight: FontWeight.w400),),
                            const Text('Completed', style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height/40,),
                Container(
                  height: size.height/10,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height/60,),
                        const Text('Start A Project meeting', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),),
                        const Text('Today-12:00 PM', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w300),),
                        Row(
                          children: [
                            Text('Status:', style: TextStyle(color: maincolor, fontSize: 15, fontWeight: FontWeight.w400),),
                            const Text('Completed', style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
                    SizedBox(height: size.height/30,),
                    Text("You have performed very well on this quater and you have completed 40  tasks very efficiently", textAlign: TextAlign.center ,style: TextStyle(color: maincolor, fontSize: 15),)
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height/15,),
            Text("Give Score", style: TextStyle(color: maincolor, fontSize: 20, fontWeight: FontWeight.w600),),
            SizedBox(height: size.height/40,),
            Container(
              height: size.height/13,
              width: size.width/3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("80", style: TextStyle(color: maincolor, fontSize: 20, fontWeight: FontWeight.w400),),
                  Text("/100", style: TextStyle(color: maincolor, fontSize: 20, fontWeight: FontWeight.w400),),
                ],
              ),
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
      ),
    );
  }
}