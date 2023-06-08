import 'package:docappointmentnew/HomePage.dart';
import 'package:docappointmentnew/compte.dart';
import 'package:docappointmentnew/consultation.dart';
import 'package:docappointmentnew/home-screen.dart';
import 'package:docappointmentnew/medical.dart';
import 'package:docappointmentnew/pharmacie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class MainScreen extends StatefulWidget {


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HommeScreen(),

    Consultation(),
    Fiche(),
    Phama(),
    Compte()

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10 ,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? CupertinoIcons.home : Icons.home_outlined),
            label: 'Accueil',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? IconlyBold.category : IconlyLight.category),
            label: 'Consultation',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? IconlyBold.bookmark : IconlyLight.bookmark),
            label: 'fiche',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? IconlyBold.heart : IconlyLight.heart),
            label: 'pharmacie',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 4 ? CupertinoIcons.person_solid : CupertinoIcons.person),
            label: 'Comptes',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF3689cb),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
