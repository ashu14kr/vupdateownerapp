import 'package:flutter/material.dart';

import '../../constant.dart';

class SubTaskDetailScreen extends StatelessWidget {
  const SubTaskDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sub tasks",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            const Text(
              "Meeting With team",
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Start Date",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 16),
                ),
                Text(
                  "28-09-2022",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "End  Date",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 16),
                ),
                Text(
                  "28-09-2022",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 40,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: size.height / 40,
            ),
            const Text(
              "Description",
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
