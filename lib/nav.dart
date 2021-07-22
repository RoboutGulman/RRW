import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Bank_Screen.dart';
import 'package:flutter_application_1/pages/Execution_Screen.dart';
import 'package:flutter_application_1/pages/Orders_Screen.dart';
import 'package:flutter_application_1/pages/Rating_Screen.dart';
import 'package:flutter_application_1/custom_icons.dart';

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
        fixedColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon:  Icon(CustomIcons.seal_fill),
              title: Text('Рейтинг'),
            ),
           BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon:  Icon(CustomIcons.arrow_up_doc_fill),
              title: Text('Приказы'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon:  Icon(CustomIcons.die_face_4_fill),
              title: Text('Исполнение'),
            ),
             BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon:  Icon(CustomIcons.creditcard_fill),
              title: Text('Банк'),
            ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        ),
    );
  }
}