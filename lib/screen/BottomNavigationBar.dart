import 'package:flutter/material.dart';
import 'package:sesstion5/route/path.dart';

import 'MyOrder.dart';
import 'Welcome.dart';

class BottomTab extends StatefulWidget {
  static String path = bottomNaBar;

  const BottomTab({Key? key}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Welcome(),
          MyOrder(
            back: () {
              onTabTapped(0);
            },
          ),
        ],
        onPageChanged: _onItemTapped,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xfffd8564),
        unselectedItemColor: Color(0xFFBFBFBF),
        selectedLabelStyle: TextStyle(color: Color(0xfffd8564)),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        onTap: onTabTapped,
      ),
    );
  }
}
