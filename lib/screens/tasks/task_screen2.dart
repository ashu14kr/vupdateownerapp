import 'package:flutter/material.dart';
import 'package:vupdate/screens/tasks/add_subtask.dart';
import 'package:vupdate/screens/tasks/sub_task.dart';
import 'package:vupdate/screens/tasks/sub_task_details.dart';
import 'package:vupdate/widgets/custom_button.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';
import '../Home/components/daily_task.dart';

class TaskScreen2 extends StatelessWidget {
  const TaskScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController fullname  = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
        child: CustomButtom(name: "+  Add Sub-Tasks", onClick: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddSubTaskScreen()));
        }),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "NewProjects/Tasks",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
                height: size.height / 15,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(12)),
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
            child: Container(
                height: size.height / 10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color.fromARGB(119, 33, 149, 243),
                          backgroundColor.withOpacity(0.1)
                        ])),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height / 60,
                          ),
                          Text(
                            "Mobile App Project",
                            style: TextStyle(
                                color: maincolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: size.height / 60,
                          ),
                          const Text(
                            "UI Kit Design Project-Dec 20,2022",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: maincolor,
                          ))
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              height: size.height / 15,
              width: size.width,
              child: const Text(
                "Create 15 different wireframes each case that occurs from project",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
              ),
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
                Row(
                  children: [
                    Icon(
                      Icons.people,
                      color: maincolor,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "Team",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: size.height / 30,
                      width: size.width / 7,
                      child: Stack(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.amber,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                            radius: 12,
                          ),
                          Positioned(
                            left: 14,
                            child: CircleAvatar(
                              backgroundColor: Colors.orange,
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1634136906717-6421833e1b7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                              radius: 12,
                            ),
                          ),
                          Positioned(
                            left: 28,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                              radius: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: maincolor,
                        ))
                  ],
                )
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
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: maincolor,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "Leader(You)",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                )
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
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: maincolor,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "Status",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height / 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "TO DO",
                          style: TextStyle(color: maincolor),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: maincolor,
                        ))
                  ],
                )
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
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: maincolor,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "End Date:",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height / 20,
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          " Dec 20,2022",
                          style: TextStyle(
                              color: Color.fromARGB(255, 122, 122, 122)),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: maincolor,
                        ))
                  ],
                )
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
                Row(
                  children: [
                    Icon(
                      Icons.attachment,
                      color: maincolor,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "Attachement",
                      style: TextStyle(
                          color: maincolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height / 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Ref.pdf",
                          style: TextStyle(color: maincolor),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: maincolor,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "% Of Completion",
                  style: TextStyle(
                      color: Color.fromARGB(255, 97, 97, 97),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                Text(
                  "80%",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sub-Task(14)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SubTaskScreen()));
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SubTaskDetailScreen()));
              },
              child: DailyTaskWidget(size: size)),
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
        ]),
      ),
    );
  }
}
