import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/subscriptions/subscription_confirmation.dart';

import '../../widgets/custom_button.dart';

class SubscriptionBillingScreen extends StatelessWidget {
  const SubscriptionBillingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left:15.0, right: 15, bottom: 15),
        child: CustomButtom(name: "CONFIRM", onClick: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionConfirmationScreen()));
        }),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Subscriptions"),
        centerTitle: true,
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
          ],
        ),
      ),
    );
  }
}