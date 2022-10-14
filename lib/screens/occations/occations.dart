import 'package:flutter/material.dart';
import 'package:vupdate/screens/occations/occation_detail.dart';

import '../../constant.dart';

class OccationsScreen extends StatelessWidget {
  const OccationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const OccuationDetailScreen()));
      }, backgroundColor: maincolor, child: const Icon(Icons.add),),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Special Occasions",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: size.height/10,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.cake, color: maincolor,),
                        SizedBox(width: size.width/25,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Birthday-Jocob", style: TextStyle(color: maincolor, fontWeight: FontWeight.w500, fontSize: 16),),
                            const Text("Oct 12, 2022", style: TextStyle(color: Color.fromARGB(255, 77, 77, 77), fontWeight: FontWeight.w300),),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: size.height/20,
                      width: size.width/5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: maincolor,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: const Text("VIEW", style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}