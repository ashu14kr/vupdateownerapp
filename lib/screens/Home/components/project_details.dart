import 'package:flutter/material.dart';

import '../../../constant.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 3.4,
      width: size.width / 1.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(158, 196, 217, 254),
                Colors.white,
              ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mobile App Project",
                  style: TextStyle(
                      color: maincolor,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: size.height / 35,
                  width: size.width / 5.5,
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bWVuJTIwZmFjZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                        radius: 10,
                      ),
                      Positioned(
                        left: 14,
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1590411506193-00ed62b2d08d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1lbiUyMGZhY2V8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          radius: 10,
                        ),
                      ),
                      Positioned(
                        left: 28,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1589198340492-ccb1de9a286f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1lbiUyMGZhY2V8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          radius: 10,
                        ),
                      ),
                      Positioned(
                        left: 42,
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1595956553439-aeb7ea92ec36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1lbiUyMGZhY2V8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          radius: 10,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height / 40,
            ),
            const Text(
              "UI Kit Design Project-Dec 20,2022",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 12),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Container(
              height: size.height / 24,
              width: size.width / 6,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: maincolor, borderRadius: BorderRadius.circular(16)),
              child: const Text(
                "70/90",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: size.height / 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "8 days left",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 60,
            ),
            LinearProgressIndicator(
              value: 0.7,
              color: maincolor,
            )
          ],
        ),
      ),
    );
  }
}
