import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/tasks/add_subtask.dart';
import 'package:vupdate/screens/tasks/sub_task_details.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../Home/components/daily_task.dart';

class SubTaskScreen extends StatelessWidget {
  const SubTaskScreen({Key? key}) : super(key: key);

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
          "Sub tasks(14)",
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
          Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SubTaskDetailScreen()));
                    },
                    child: DailyTaskWidget(size: size)),
                );
              })),
            )
        ],
      ),
    );
  }
}