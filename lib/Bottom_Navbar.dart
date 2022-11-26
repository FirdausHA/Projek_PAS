import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:projek_pas/Tabbar.dart';
import 'package:projek_pas/home_page.dart';
import 'package:projek_pas/main.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          MyHomePage(),
          Container(color: Colors.white),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Icon(Icons.production_quantity_limits),
            title: Text('Product'),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}