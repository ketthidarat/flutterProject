import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterProject/home.dart';

import 'Zodiac.dart';
import 'about.dart';
import 'Year.dart';
import 'introscreen.dart';

class BarNavy extends StatefulWidget {
  @override
  _BarNavyState createState() => _BarNavyState();
}
class _BarNavyState extends State<BarNavy> {

  int _selectedIndex = 0;
  final List<Widget> _children = 
  [
    AboutMePage(),
    HomePage(),
    
    ZodiacPage(),
    YearPage()
  ];
  PageController _pageController;
  void onTappedBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
// onItemSelected: (index) {
//           setState(() => _selectedIndex = index);
//           _pageController.jumpToPage(index);
//         },
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffcc5c) ,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
        unselectedItemColor: Colors.blueGrey,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text('Items'),
            icon: Icon(Icons.face),
          ),
          BottomNavigationBarItem(
            title: Text('Mage'),
            icon: Icon(Icons.star)
          ),
          BottomNavigationBarItem(
            title: Text('Items'),
            icon: Icon(Icons.pets),
          ),
          
        ],
      ),
    );
  }
}