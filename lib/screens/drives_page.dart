import 'package:engineers_data/custom%20widgets/item_view.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';

class DrivesScreen extends StatelessWidget {
  const DrivesScreen({Key? key}) : super(key: key);
  static String id = '/DrivesPage';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'images/wp6587665.jpg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SafeArea(
                    child: Text(
                  'Drives:',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Pacifico"),
                )),
                SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: drives
                          .map((driveData) =>
                              ListItem(driveData.title, driveData.navId,driveData.url))
                          .toList()),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
