import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';
import '../tasks/add_team_member.dart';

class AddGroupScreen extends StatelessWidget {
  const AddGroupScreen({Key? key}) : super(key: key);

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
          "New Team",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
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
              Text(
                "Group Name",
                style: TextStyle(
                    color: maincolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              CustomtextField(
                  hint: "Enter Group Name", color: Colors.grey, text: fullname,),
              Divider(
                height: 0.5,
                thickness: 0.5,
                color: maincolor,
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Row(
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
                          "Admin(you)",
                          style: TextStyle(
                              color: maincolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                    )
                ],
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Divider(
                height: 0.5,
                thickness: 0.5,
                color: maincolor,
              ),
              SizedBox(
                height: size.height / 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.groups,
                          color: maincolor,
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Text(
                          "Members",
                          style: TextStyle(
                              color: maincolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
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
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                                radius: 12,
                              ),
                              Positioned(
                                left: 14,
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1634136906717-6421833e1b7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                                  radius: 12,
                                ),
                              ),
                              Positioned(
                                left: 28,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  backgroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fG1lbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                                  radius: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddTeamMembersScreen()));
                            },
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
                height: size.height / 10,
              ),
              Row(
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
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
                    },
                    child: Container(
                      height: size.height / 14,
                      width: size.width / 2.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: maincolor,
                          borderRadius: BorderRadius.circular(24)),
                      child: const Text(
                        "+ CREATE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
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