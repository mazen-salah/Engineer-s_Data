import 'package:engineers_data/screens/courses_page.dart';
import 'package:flutter/material.dart';
import 'home_view.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light)
              .copyWith(primary: Colors.blueGrey)),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark)
              .copyWith(secondary: Colors.blueGrey)),
      routes: {
        '/': (context) => const Home(),
        CoursesPage.id: (context) => const CoursesPage(),
      },
    );
  }
}
