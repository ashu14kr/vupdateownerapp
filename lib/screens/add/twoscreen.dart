import 'package:flutter/material.dart';
import 'package:vupdate/screens/add/add_screen.dart';
import 'package:vupdate/screens/home/home.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [HomeScreen(), AddScreen(),]),
    );
  }
}
