import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';
import '../tasks/add_team_member.dart';

class AddNewEventScreen extends StatelessWidget {
  const AddNewEventScreen({Key? key}) : super(key: key);

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
          "New Booking",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
        ],
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
                "Booking Name",
                style: TextStyle(
                    color: maincolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              CustomtextField(
                  hint: "Enter Booking Name", color: Colors.grey, text: fullname,),
              Divider(
                height: 0.5,
                thickness: 0.5,
                color: maincolor,
              ),
              SizedBox(
                height: size.height / 60,
              ),
              Text(
                "Booking Description",
                style: TextStyle(
                    color: maincolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              SizedBox(
                  height: size.height / 4,
                  width: size.width,
                  child: CustomtextField(
                      hint: "Enter Booking Description", color: Colors.grey, text: fullname,)),
              SizedBox(
                height: size.height / 60,
              ),
              Divider(
                height: 0.5,
                thickness: 0.5,
                color: maincolor,
              ),
              SizedBox(
                height: size.height / 60,
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
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
                          Icons.person,
                          color: maincolor,
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Text(
                          "Facilitator",
                          style: TextStyle(
                              color: maincolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    )
                  ],
                ),
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
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
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
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: Icon(
                        //       Icons.add_box_outlined,
                        //       color: maincolor,
                        //     ))
                        PopupMenuButton(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                icon: Icon(Icons.add_box_outlined, color: maincolor,),
                                itemBuilder: ((context) {
                                  return <PopupMenuEntry>[
                                    PopupMenuItem(
                                      value: 1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Document',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                          Icon(Icons.file_copy, color: maincolor,),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                      value: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Gallery',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                          Icon(Icons.image, color: maincolor,),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                      value: 3,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Camera',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                          Icon(Icons.camera, color: maincolor,),
                                        ],
                                      ),
                                    ),
                                  ];
                                })),
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