import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:news_app/models/News.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/widgets/ListItem.dart';

///Home page Class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///news list
  static List<News> _news = [];
  static List<News> _newsInApp = [News("1","dgvd","hi","sdgvdsgv","dsfgvsdgv","dfgvdfvg","","sdfsdf")];

  /// init state
  @override
  void initState() {
    comingNews().then((value) => {
          setState(() {
            _news.addAll(value);
            _newsInApp = _news;
          })
        });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///App bar
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Theme.of(context).accentColor,
                    width: 200,
                    height: 120,
                  ),
                  Text("NEWS",style: TextStyle(fontSize: 50 ,color: Colors.white),)
                ],
              ),
            )
          ],
        ),
      ),

      ///body
      body:  NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: ListView.builder(
          itemCount: _newsInApp.length,
          itemBuilder: (context, index) {
            return ListItem(_newsInApp[index]);
          },
        ),
      ),
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
