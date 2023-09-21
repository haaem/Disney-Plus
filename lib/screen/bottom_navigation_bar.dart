import 'package:disney_plus/screen/download_page.dart';
import 'package:disney_plus/screen/home_page.dart';
import 'package:disney_plus/screen/my_page.dart';
import 'package:disney_plus/screen/search_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List _pageOptions = [
    HomePage(),
    SearchPage(),
    DownloadPage(),
    MyPage()
  ];

  void _onPageTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pageOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home', backgroundColor: Colors.black26,),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: 'search', backgroundColor: Colors.black26,),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: 'download', backgroundColor: Colors.black26,),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'mypage', backgroundColor: Colors.black26,)
        ],
        onTap: _onPageTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
