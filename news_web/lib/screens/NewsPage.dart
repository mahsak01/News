import 'package:flutter/material.dart';
import 'package:news_web/models/News.dart';
import 'package:news_web/screens/NewsPageMin.dart';

import 'NewsPageMax.dart';
class NewsPage extends StatelessWidget {
  News news;
  NewsPage(this.news);

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=700)
      return NewsPageMax(news);
    else
       return NewsPageMin(news);
  }
}
