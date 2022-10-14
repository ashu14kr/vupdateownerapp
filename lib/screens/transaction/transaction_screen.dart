import 'package:flutter/material.dart';
import 'package:vupdate/screens/subscriptions/subscriptions.dart';

import '../../constant.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "My Transaction",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(height: size.height/8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Your Plan", style: TextStyle(color: Colors.grey, fontSize: 17),),
                Text("Subscription 1", style: TextStyle(color: maincolor, fontSize: 17),)
              ],
            ),
            SizedBox(height: size.height/60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Duration", style: TextStyle(color: Colors.grey, fontSize: 17),),
                Text("1 Month", style: TextStyle(color: maincolor, fontSize: 17),)
              ],
            ),
            SizedBox(height: size.height/80,),
            const Divider(
              height: 0.8,
              thickness: 0.8,
              color: Colors.grey,
            ),
            SizedBox(height: size.height/80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Price", style: TextStyle(color: Colors.grey, fontSize: 17),),
                Text("₹199", style: TextStyle(color: maincolor, fontSize: 17, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: size.height/5,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
              },
              child: Container(
                height: size.height/15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: maincolor,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text("UPGRADE", style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}