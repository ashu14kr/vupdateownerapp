import 'package:flutter/material.dart';
import 'package:vupdate/screens/performance/performance_detail_for_boss.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';

class PerformanceReportScreen extends StatelessWidget {
  const PerformanceReportScreen({Key? key}) : super(key: key);

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
          "Performance Report",
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
          Expanded(
            child: ListView.builder(
                itemCount: 6,
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
                                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1614252369475-531eba835eb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVzc2luZXNzJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
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
                                      "Maksym Tymchyk",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: size.height / 120,
                                    ),
                                    const Text(
                                      "graphic_designer",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                )
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const PerformanceDetailBScreen()));
                              },
                              child: Container(
                                height: size.height / 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: maincolor,
                                    borderRadius: BorderRadius.circular(12)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("VIEW", style: TextStyle(color: Colors.white),),
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}