import 'package:flutter/material.dart';

import 'main_menu.dart';
import 'news_page.dart';


class Home extends StatefulWidget {
  static String id = 'HomeScreen';

  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const MainMenu(),
    const NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/icons/ic_launcher.png'),
            const Text(
              'Engineer\'s Data',
              style: TextStyle(
                fontFamily: 'Pacifico',
              ),
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Main Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "News",
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}