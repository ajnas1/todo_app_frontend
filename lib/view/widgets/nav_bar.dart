import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/view/auth_screen/calendar_screen.dart';
import 'package:todoapp/view/auth_screen/graph_screen.dart';
import 'package:todoapp/view/auth_screen/home_screen.dart';
import 'package:todoapp/view/auth_screen/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final List pages = [
    HomeScreen(),
    CalendarScreen(),
    GraphScreen(),
    ProfileScreen(),
  ];
  
  void OnItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: pages.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Home.svg'), label: 'home'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Calender.svg'), label: 'calendar'),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/Chart.svg'), label: 'chart'),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/Profile.svg'), label: 'profile'),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.amber,
        unselectedItemColor: Colors.black,
        onTap: OnItemTapped,),
      );
  }
}
