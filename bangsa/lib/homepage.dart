import 'package:bangsa/add_screen.dart';
import 'package:bangsa/bookmark_screen.dart';
import 'package:bangsa/popular_screen.dart';
import 'package:bangsa/product_screen.dart';
import 'package:bangsa/profile_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final _bottomNavigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined, color: Colors.grey),
      activeIcon: Icon(Icons.home_filled, color: Color(0xff07507B)),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_fire_department_outlined, color: Colors.grey),
      activeIcon: Icon(Icons.local_fire_department, color: Color(0xff07507B)),
      label: 'Popular',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_circle_outline, color: Colors.grey),
      activeIcon: Icon(Icons.add_circle, color: Color(0xff07507B)),
      label: 'Add',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_border, color: Colors.grey),
      activeIcon: Icon(Icons.bookmark, color: Color(0xff07507B)),
      label: 'Bookmark',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline, color: Colors.grey),
      activeIcon: Icon(Icons.person, color: Color(0xff07507B)),
      label: 'Profile',
    ),
  ];

  final List<Widget> _screens = [
    ProductScreen(),
    PopularScreen(),
    AddScreen(),
    BookmarkScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff07507B),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Product {
  final String title;
  final int rating;
  final String price;
  final String imageUrl;

  Product({
    required this.title,
    required this.rating,
    required this.price,
    required this.imageUrl,
  });
}
