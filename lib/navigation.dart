import 'package:flutter/material.dart';
import 'favourite.dart';
import 'search.dart';
import 'discover.dart';
import 'settings.dart';

class navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _navigationState();
  }
}

class _navigationState extends State<navigation> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Search()),
    Center(child: Discover()),
    Center(child: Favourite()),
    Center(child: Settings()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('trivago'),
      // ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        unselectedItemColor: Color.fromRGBO(154, 162, 165, 1.0),
        selectedItemColor: Color.fromRGBO(0, 102, 153, 1.0),
        // selectedFontSize: 10,
        // unselectedFontSize: 5,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            // backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text("Discover"),
            // backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favourites"),
            // backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
            //  backgroundColor: Colors.indigoAccent,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
