import 'package:flutter/material.dart';
import 'package:vupdate/screens/tasks/team_members.dart';
import 'package:vupdate/widgets/custom_button.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';

class AddTeamMembersScreen extends StatelessWidget {
  const AddTeamMembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController fullname  = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
        child: CustomButtom(name: "+ Add Team Members", onClick: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamMemberScreen()));
        }),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Team Members(3)",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
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
            height: size.height / 30,
          ),
          Expanded(child: 
          ListView.builder(
            itemCount: 4,
            itemBuilder: ((context, index) {
            return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Container(
                      height: size.height / 10,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1517677129300-07b130802f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                                  radius: 25,
                                ),
                                SizedBox(
                                  width: size.width / 30,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shreya",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: size.height / 60,
                                    ),
                                    const Text(
                                      "Shreya_135",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                )
                              ],
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: maincolor,))
                          ],
                        ),
                      ),
                    ),
                  );
          })))
        ],
      ),
    );
  }
}