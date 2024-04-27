import 'package:curex/doc.dart';
import 'package:curex/home.dart';
import 'package:curex/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
// ignore: unnecessary_import
import 'dart:ui';

class navscreen extends StatefulWidget {
  const navscreen({super.key});

  @override
  State<navscreen> createState() => _navscreenState();
}

class _navscreenState extends State<navscreen> {
  int _selectedindex = 0;
  static List<Widget> _widgetoptions=<Widget>[
    Home(),
    Doctor(),
     Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: _widgetoptions.elementAt(_selectedindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: Colors.black.withOpacity(0.1),
        )
      ],
    ),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical:8 ),
         child:GNav(
          rippleColor: Colors.white,
          hoverColor: Colors.white,
          gap: 8,
          activeColor: const Color.fromARGB(255, 255, 255, 254),
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 500),
          tabBackgroundColor:const Color.fromARGB(255, 79, 180, 111),
          color: Colors.black,
          tabs:const [
            GButton(icon: LineIcons.home, text: 'Home'),
            GButton(icon: LineIcons.clock, text: 'Doctors'),
            GButton(icon: LineIcons.user, text: 'Profile'),

          ],
          selectedIndex: _selectedindex,
          onTabChange: (index) {
            setState(() {
              _selectedindex = index;
            });
            
          }, )
         )
),)
      );
  }
}