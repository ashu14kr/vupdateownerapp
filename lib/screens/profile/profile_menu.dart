import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/aboutus/aboutus.dart';
import 'package:vupdate/screens/group/group.dart';
import 'package:vupdate/screens/occations/occations.dart';
import 'package:vupdate/screens/performance/performance_report.dart';
import 'package:vupdate/screens/profile/edit_profile.dart';
import 'package:vupdate/screens/settings/settings.dart';
import 'package:vupdate/screens/transaction/transaction_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.close, color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVzc2luZXNzJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                  radius: 60,
                ),
              ),
              SizedBox(height: size.height/35,),
              const Text("Daniel", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),),
              const Text("Project Manager", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontSize: 16),),
              SizedBox(height: size.height/20,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.home, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.person, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("Edit Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PerformanceReportScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.task, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("Performance Report", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GroupScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.groups, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("Teams", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OccationsScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.celebration, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("Special Occasions", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TransactionScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.credit_card, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("My Transaction", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.settings, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("Settings", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.contact_page, color: maincolor, size: 25,),
                    SizedBox(width: size.width/20,),
                    const Text("About Us", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),)
                  ],
                ),
              ),
              SizedBox(height: size.height/40,),
              Divider(height: 1, thickness: 1, color: maincolor,),
              SizedBox(height: size.height/40,),
              Row(
                children: [
                  const Icon(Icons.logout, color: Colors.red, size: 25,),
                  SizedBox(width: size.width/20,),
                  const Text("Log Out", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400, fontSize: 17),)
                ],
              ),
              SizedBox(height: size.height/20,),
            ],
          ),
        ),
      ),
    );
  }
}