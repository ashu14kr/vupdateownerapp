import 'package:flutter/material.dart';
import 'package:vupdate/constant.dart';
import 'package:vupdate/screens/add/twoscreen.dart';
import 'package:vupdate/screens/bookings/booking_events.dart';
import 'package:vupdate/screens/home/home.dart';
import 'package:vupdate/screens/leads/leads.dart';
import 'package:vupdate/screens/tasks/task_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  static List screens = [
    const HomeScreen(),
    const TaskScreen(),
    const TwoScreen(),
    const BookingEventScreens(),
    const LeadScreen(),
  ];

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: maincolor,
        unselectedItemColor: const Color.fromARGB(130, 33, 149, 243),
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.task), label: "New Projects/Tasks"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Upcoming Bookings"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Manage Leads")
      ]),
      body: NavigationScreen.screens.elementAt(currentIndex),
    );
  }
}