import 'package:flutter/material.dart';
import 'package:vupdate/screens/Home/components/project_details.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({Key? key}) : super(key: key);

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
          "Recent Projects",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
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
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: ProjectDetails(size: size),
                );
              })),
            )
        ],
      ),
    );
  }
}