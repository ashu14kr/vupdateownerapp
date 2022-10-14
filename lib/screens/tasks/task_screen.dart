import 'package:flutter/material.dart';
import 'package:vupdate/screens/tasks/task_screen2.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';
import '../Home/components/project_details.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  static List filters = [
    "ALL",
    "TO DO",
    "IN PROGRESS",
    "PENDING",
    "COMPLETED",
    "STARTED",
    "NEWEST",
    "OLDEST",
  ];

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int _currentindex = 0;
  TextEditingController fullname  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "NewProjects/Tasks",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: Column(
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
                          color: Colors.grey, text: fullname,
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
            height: size.height / 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: SizedBox(
              height: size.height / 15,
              width: size.width,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _currentindex = index;
                          });
                        },
                        child: Container(
                          height: size.height / 16,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: _currentindex == index
                                ? maincolor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              TaskScreen.filters[index],
                              style: TextStyle(
                                  color: _currentindex == index
                                      ? Colors.white
                                      : maincolor),
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
            ),
          ),
          SizedBox(
            height: size.height / 1.6,
            width: size.width,
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskScreen2()));
                      },
                      child: ProjectDetails(size: size)),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
