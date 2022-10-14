import 'package:flutter/material.dart';

import '../../constant.dart';

class LeadDetailScreen extends StatelessWidget {
  const LeadDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          " Manage Leads",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Jacob",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                Text(
                  "April 1 2022, 3:30 pm",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "99033525673",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  "Pending",
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            const Text(
              "Remarks",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.height / 100,
            ),
            const Text(
              "Please ask the lead to complete the application process",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: maincolor,
                    ),
                    SizedBox(
                      width: size.width / 25,
                    ),
                    Text(
                      "Tagged",
                      style: TextStyle(
                          color: maincolor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 35,
                  width: size.width / 5.5,
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bWVuJTIwZmFjZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                        radius: 10,
                      ),
                      Positioned(
                        left: 14,
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1590411506193-00ed62b2d08d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1lbiUyMGZhY2V8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          radius: 10,
                        ),
                      ),
                      Positioned(
                        left: 28,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1589198340492-ccb1de9a286f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1lbiUyMGZhY2V8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          radius: 10,
                        ),
                      ),
                      Positioned(
                        left: 42,
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1595956553439-aeb7ea92ec36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1lbiUyMGZhY2V8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          radius: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
