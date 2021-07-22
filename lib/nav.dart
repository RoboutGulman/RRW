import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Bank_Screen.dart';
import 'package:flutter_application_1/pages/Execution_Screen.dart';
import 'package:flutter_application_1/pages/Orders_Screen.dart';
import 'package:flutter_application_1/pages/Rating_Screen.dart';

class Nav extends StatefulWidget {
  const Nav({ Key? key }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Rating(),
    Orders(),
    Execution(),
    Bank(),

  ];

  void _onItemTap(int index){
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
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:  Icon(Icons.brightness_5),
              title: Text('Рейтинг'),
            ),
           BottomNavigationBarItem(
              icon:  Icon(Icons.message),
              title: Text('Приказы'),
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.person),
              title: Text('Исполнение'),
            ),
             BottomNavigationBarItem(
              icon:  Icon(Icons.person),
              title: Text('Банк'),
            ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        ),
    );
  }
}