// @dart=2.9
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'models/ProviderControl.dart';
import 'screens/HomePage.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProviderControl()),
        ],
        child: const MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

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
