import 'package:flutter/material.dart';

class LeadCardWidget extends StatelessWidget {
  const LeadCardWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 3.8,
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
              height: size.height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Jacob", style: TextStyle(color: Colors.black, fontSize: 17),),
                Text("April 1 2022, 3:30 pm", style: TextStyle(color: Colors.black, fontSize: 17),)
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("99033525673", style: TextStyle(color: Colors.black, fontSize: 15),),
                Text("Pending", style: TextStyle(color: Colors.orange, fontSize: 15),)
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            const Text("Remarks", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),),
            SizedBox(
              height: size.height / 100,
            ),
            const Text("Please ask the lead to complete the application process", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
          ],
        ),
      ),
    );
  }
}