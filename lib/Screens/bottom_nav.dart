//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screens/Screen1.dart';
import 'package:myapp/Screens/Screen2.dart';
import 'package:myapp/Screens/Screen3.dart';
import 'package:myapp/Screens/Screen4.dart';



class BottomNavigationBarApp extends StatelessWidget {
  final String username;

   const BottomNavigationBarApp({Key? key, required this.username}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    //PizzaItem.new()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize:20,
        backgroundColor: Colors.orange,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1697439647.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1216919230.
            icon: Icon(Icons.add),
            label: 'menuitems',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'orders',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'myfav',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}


