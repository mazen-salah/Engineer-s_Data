import 'package:flutter/material.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Engineer's Data",
      themeMode: ThemeMode.system,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light)
              .copyWith(secondary: Colors.blueGrey)),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark)
              .copyWith(secondary: Colors.blueGrey)),
    );
  }
}
