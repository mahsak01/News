import 'package:flutter/material.dart';

import 'screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff707070),
        accentColor: Color(0xffcc2626),
        backgroundColor: Colors.white
      ),
      title: 'NewsApp',
      home: HomePage(),
    );
  }
}
