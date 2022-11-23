import 'package:flutter/material.dart';
import 'package:instagram/Pages/Reels.dart';
import 'package:instagram/Pages/account.dart';
import 'package:instagram/Pages/home.dart';
import 'package:instagram/Pages/search.dart';
import 'package:instagram/Pages/shop.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate around the bottom nav bar
  int _selectedIndex=2;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  final List<Widget> _children=[
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: _children[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomNavBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account '),


        ],
      ),
  
  
);


  }
}
