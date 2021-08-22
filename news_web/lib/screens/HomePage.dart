import 'package:flutter/material.dart';
import 'package:news_web/screens/HomePageMax.dart';
import 'package:news_web/screens/HomePageMin.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=500)
      return HomePageMax();
    else
      return HomePageMin();
  }
}
