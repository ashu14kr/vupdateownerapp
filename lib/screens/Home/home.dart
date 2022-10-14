import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/alltasks/alltasks.dart';
import 'package:vupdate/screens/notification/notification_screen.dart';
import 'package:vupdate/screens/profile/edit_profile.dart';
import 'package:vupdate/screens/profile/profile_menu.dart';
import 'package:vupdate/screens/recentprojects/recentprojects.dart';

import '../../widgets/custom_textfield.dart';
import '../Home/components/daily_task.dart';
import '../Home/components/project_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          "V UPDATE",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen()));
        }, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
          }, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen()));
          }, icon: const Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                  height: size.height / 15,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: size.width / 25,
                        ),
                        Expanded(
                          child: CustomtextField(
                            hint: "Search",
                            color: Colors.grey, 
                            text: fullname,
                          ),
                        ),
                        Icon(
                          Icons.auto_awesome_mosaic_rounded,
                          color: maincolor,
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Projects",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RecentProjects()));
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            SizedBox(
              height: size.height / 3.5,
              width: size.width,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ProjectDetails(size: size)
                    );
                  })),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Todays Task",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AllTasksScreen()));
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            DailyTaskWidget(size: size),
            SizedBox(
              height: size.height / 50,
            ),
            DailyTaskWidget(size: size),
            SizedBox(
              height: size.height / 50,
            ),
            DailyTaskWidget(size: size),
            SizedBox(
              height: size.height / 50,
            ),
            DailyTaskWidget(size: size),
            SizedBox(
              height: size.height / 30,
            ),
            Container(
              height: size.height / 2.3,
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    const Color.fromARGB(51, 64, 195, 255),
                    backgroundColor
                  ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Leads",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        Text(
                          "View details",
                          style: TextStyle(
                              color: maincolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LeadStatus(size: size),
                        LeadStatus(size: size),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeadStatus extends StatelessWidget {
  const LeadStatus({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 6.5,
      width: size.width / 2.5,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(92, 27, 3, 31),
                Color.fromARGB(160, 68, 137, 255)
              ]),
          borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Icon(
            Icons.task,
            color: Colors.white,
            size: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height / 30,
              ),
              const Text(
                "20",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: size.height / 70,
              ),
              const Text(
                "Pending",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
