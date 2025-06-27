import 'package:class_work1/page.dart';
import 'package:class_work1/screens/Dashboard.dart';
import 'package:class_work1/screens/exchange.dart';
import 'package:class_work1/screens/history.dart';
import 'package:class_work1/screens/profile.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int currentIndexs = 0;

  final List<Widget> screens = [
    Dashboard(),
    Loginpage(),
    Exchange(),
    History(),
    Profile(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndexs = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: screens[currentIndexs],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 20,
        selectedItemColor: Color(0xFF3f3cef),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: currentIndexs,
        items: const [
          BottomNavigationBarItem(label: "Dashboard", icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(label: "Login", icon: Icon(Icons.currency_bitcoin)),
          BottomNavigationBarItem(label: "Exchange", icon: Icon(Icons.currency_exchange_sharp)),
          BottomNavigationBarItem(label: "Transactions", icon: Icon(Icons.history)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
  // }

 