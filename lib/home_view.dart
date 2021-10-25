import 'package:flutter/material.dart';

import 'screens/main_menu.dart';
import 'screens/news_page.dart';

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
    return Stack(children: [
      Image.asset(
        'images/434d3b3816c3cc208547b7e3e7f19602.jpg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
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
                icon: Icon(Icons.home),
                label: "Main Menu",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: "News",
              ),
            ]),
      ),
    ]);
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
