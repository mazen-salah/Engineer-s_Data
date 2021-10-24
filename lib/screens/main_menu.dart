import 'package:engineers_data/custom%20widgets/item_view.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            mainMenuData.map((menuData) => ListItem(menuData.title)).toList());
  }
}
