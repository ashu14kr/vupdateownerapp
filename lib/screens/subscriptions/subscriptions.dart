import 'package:flutter/material.dart';
import 'package:vupdate/screens/subscriptions/subscription_billing.dart';
import 'package:vupdate/widgets/custom_button.dart';

import '../../constant.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  static List plans = [
    {
      "subscription": "Subscription 1",
      "point1": ". 5 Employee Id Accesss",
      "point2": ". Can set one other user as admin",
      "duration": "1 Months",
      "price": "₹199"
    },
        {
      "subscription": "Subscription 2",
      "point1": ". 12 Employee Id Accesss",
      "point2": ". Can set two other user as admin",
      "duration": "3 Months",
      "price": "₹299"
    },
        {
      "subscription": "Subscription 3",
      "point1": ". 12 Employee Id Accesss",
      "point2": ". Can set two other user as admin",
      "duration": "12 Months",
      "price": "₹899"
    }
  ];

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {


  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left:15.0, right: 15, bottom: 15),
        child: CustomButtom(name: "CONFIRM", onClick: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionBillingScreen()));
        }),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Subscriptions"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: size.height/20,),
          SizedBox(
            height: size.height/1.35,
            width: size.width,
            child: ListView.builder(
              itemCount: SubscriptionScreen.plans.length,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      currentindex = index;
                    });
                  },
                  child: Container(
                    height: size.height/5,
                    width: size.width/2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: currentindex == index ? const Color.fromARGB(125, 33, 149, 243) : Colors.transparent,
                          blurRadius: 20,
                          spreadRadius: 4
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height/40,),
                          Text(SubscriptionScreen.plans[index]["subscription"], style: const TextStyle(color: Colors.grey, fontSize: 18),),
                          SizedBox(height: size.height/60,),
                          Text(SubscriptionScreen.plans[index]["point1"], style: const TextStyle(color: Colors.grey, fontSize: 15),),
                          SizedBox(height: size.height/80,),
                          Text(SubscriptionScreen.plans[index]["point2"], style: const TextStyle(color: Colors.grey, fontSize: 15),),
                          SizedBox(height: size.height/50,),
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(SubscriptionScreen.plans[index]["duration"], style: const TextStyle(color: Colors.grey, fontSize: 15),),
                                Text(SubscriptionScreen.plans[index]["price"], style: TextStyle(color: maincolor, fontSize: 18, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}