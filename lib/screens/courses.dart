import 'package:engineers_data/custom%20widgets/item_view.dart';
import 'package:flutter/cupertino.dart';

import '../app_data.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: coursesData
          .map((courseData) =>
          GridItem(courseData.title, courseData.image, courseData.id))
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
