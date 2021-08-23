//
import 'dart:convert';

import 'package:flutter/material.dart';
import 'models/News.dart';
import 'models/PublicValue.dart';
import 'screens/HomePage.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// init state
  @override
  void initState() {
    comingNews().then((value) => {
      setState(() {
        news.addAll(value);
        newsInApp = news;
      })
    });
    // TODO: implement initState
    super.initState();
  }

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

  /// function for read data
  Future<List<News>> comingNews() async {
    var url = Uri.parse("http://www.mocky.io/v2/5ecfddf13200006600e3d6d0");
    var response = await http.get(url);
    List<News> news = [];

    if (response.statusCode == 200) {
      var notesJson = jsonDecode(response.body);
      for (var value in notesJson) news.add(News.fromeJson(value));
    }
    return news;
  }

}
