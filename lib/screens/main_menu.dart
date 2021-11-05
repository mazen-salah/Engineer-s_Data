import 'package:engineers_data/custom%20widgets/item_view.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SafeArea(
              child: Text(
                'Main Menu:',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Pacifico"),
              )),

          SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: mainMenuData
                    .map((menuData) => ListItem(menuData.title, menuData.navId,menuData.url))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
