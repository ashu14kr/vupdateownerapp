import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/bookings/new_event.dart';
import 'package:vupdate/screens/group/group.dart';
import 'package:vupdate/screens/occations/occation_detail.dart';
import 'package:vupdate/screens/occations/occations.dart';
import 'package:vupdate/screens/tasks/add_task.dart';

import '../leads/add_leads.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FloatingActionButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddTaskScreen()));
                      }, backgroundColor: maincolor, child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.task, color: Colors.white,),
                          Text("New Project", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 7),)
                        ],
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FloatingActionButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewEventScreen()));
                      }, backgroundColor: maincolor, child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.book, color: Colors.white,),
                          Text("Add Bookings", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 7),)
                        ],
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FloatingActionButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddLeadScreen()));
                      }, backgroundColor: maincolor, child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.people, color: Colors.white,),
                          Text("Add Leads", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 7),)
                        ],
                      ),),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: FloatingActionButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OccationsScreen()));
                        }, backgroundColor: maincolor, child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.celebration, color: Colors.white,),
                            Text("Special Occasions", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 6),)
                          ],
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: FloatingActionButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const GroupScreen()));
                        }, backgroundColor: maincolor, child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.groups, color: Colors.white,),
                            Text("Create Teams", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 7),)
                          ],
                        ),),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
