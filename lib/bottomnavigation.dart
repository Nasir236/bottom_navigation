import 'package:bottom_navigationbar/pages/userContact.dart';
import 'package:bottom_navigationbar/pages/userHome.dart';
import 'package:bottom_navigationbar/pages/userMessage.dart';
import 'package:bottom_navigationbar/pages/userSetting.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _Pages = [Userhome(), Usermessage(), Usersetting(), Usercontact()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.deepPurple,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
