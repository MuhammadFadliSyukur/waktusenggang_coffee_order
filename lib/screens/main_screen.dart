import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/screens/home_screen.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

/* 
Function from MainScreen is to build Bottom Navigation
  Navigation Connected
    Home -> HomeScreen (done)
    Order -> OrderScreen (soon)
    Favorite -> FavoriteScreen (soon)
    Profile -> ProfileScreen (soon)
*/
class MainScreen extends StatelessWidget {
  static const String _title = 'Waktu Senggang Coffee Shop';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyBottomNavigation(),
    );
  }
}

class MyBottomNavigation extends StatefulWidget {
  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Index 1 : Shopping'),
    Text('Index 2 : Favorite'),
    Text('Index 4 : Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: greenColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Order',
              backgroundColor: greenColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: greenColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: greenColor),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: secondColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
