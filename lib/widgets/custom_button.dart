import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';

class CustomButtom extends StatelessWidget {
  final String name;
  final VoidCallback onClick;
  const CustomButtom({Key? key, required this.name, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onClick,
      child: Container(
        height: size.height/14,
        width: size.width/1.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: maincolor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
    );
  }
}