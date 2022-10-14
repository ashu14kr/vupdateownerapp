import 'package:flutter/material.dart';
import 'package:vupdate/screens/group/add_group.dart';

import '../../constant.dart';
import '../../widgets/custom_textfield.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController fullname  = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddGroupScreen()));
      }, backgroundColor: maincolor, child: const Icon(Icons.add, color: Colors.white,)),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Teams",
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
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Container(
                  height: size.height/10,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(149, 148, 186, 251),
                        child: Icon(Icons.groups, color: maincolor,),
                      ),
                      SizedBox(height: size.width/20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Build a Wireframe Group", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),),
                          SizedBox(height: size.height/100,),
                          const Text("30-09-2022", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.normal),),
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: maincolor,),),
                    ]),
                  ),
                ),
              );
            })))
        ],
      ),
    );
  }
}