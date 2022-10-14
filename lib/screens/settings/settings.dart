import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: size.height/20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("General Notification", style: TextStyle(color: Colors.black, fontSize: 17),),
                Switch(value: true, onChanged: (val){})
              ],
            ),
            SizedBox(height: size.height/60,),
            Divider(height: 0.5, thickness: 0.5, color: maincolor,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Sound", style: TextStyle(color: Colors.black, fontSize: 17),),
                Switch(value: true, onChanged: (val){})
              ],
            ),
            SizedBox(height: size.height/60,),
            Divider(height: 0.5, thickness: 0.5, color: maincolor,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Vibrate", style: TextStyle(color: Colors.black, fontSize: 17),),
                Switch(value: false, onChanged: (val){})
              ],
            ),
            SizedBox(height: size.height/60,),
            Divider(height: 0.5, thickness: 0.5, color: maincolor,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Reminder", style: TextStyle(color: Colors.black, fontSize: 17),),
                Switch(value: false, onChanged: (val){})
              ],
            ),
            SizedBox(height: size.height/60,),
            Divider(height: 0.5, thickness: 0.5, color: maincolor,)
          ],
        ),
      ),
    );
  }
}