import 'package:flutter/material.dart';
import 'package:football_screens/UI/home_page/home_page.dart';
import 'package:football_screens/UI/profile_page/profile_page.dart';
import 'package:football_screens/UI/widgets/custom_navigation_bar.dart';
import 'package:football_screens/helpers/globals.dart';
import 'package:football_screens/models/navbar_item_data.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _tapHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<NavbarItemData> _items;
  @override
  void initState() {
    _items = [
      NavbarItemData(gif: 'assets/home.gif', text: "Home"),
      NavbarItemData(gif: 'assets/house.gif', text: "Tickets"),
      NavbarItemData(gif: 'assets/ball.gif', text: "Matches"),
      NavbarItemData(gif: 'assets/news.gif', text: "News"),
      NavbarItemData(gif: 'assets/people.gif', text: "Profile"),
    ];
    super.initState();
  }

  List<Widget> pages = [
    HomePage(),
    //NewsListPage(),
    HomePage(),
    //NewsListPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        itemTapped: _tapHandler,
        items: _items,
      ),
      body: Center(
        child: IndexedStack(
          children: pages,
          index: _selectedIndex,
        ),
      ),
    );
  }
}
