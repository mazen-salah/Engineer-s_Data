import 'package:engineers_data/custom%20widgets/item_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../app_data.dart';

class CoursesPage extends StatelessWidget {
  static String id = 'CoursesPage';

  const CoursesPage({Key? key}) : super(key: key);

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
        body: Column(
          children: [
            const SafeArea(
                child: Text(
              'Courses:',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Pacifico"),
            )),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(25),
                children: coursesData
                    .map((courseData) => GridItem(courseData.title,
                        courseData.image, courseData.id, courseData.navId))
                    .toList(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
