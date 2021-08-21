import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:news_app/models/News.dart';
import 'package:http/http.dart' as http;

//Home page Class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<News> _news=[];
  static List<News> _newsInApp=[];

  @override
  void initState() {
    comingNews().then((value) => {
      setState((){
        _news.addAll(value);
        _newsInApp=_news;
      })
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //App bar
      appBar: PreferredSize(
       preferredSize:Size.fromHeight(79),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    width: 0.5,
                    color: Colors.white
                  )
                )
              ),
            ),
            AppBar(
              title: Text(
                'News',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Future<List<News>> comingNews() async {
    var url=Uri.parse("http://www.mocky.io/v2/5ecfddf13200006600e3d6d0") ;
    var response=await  http.get(url);
    List<News> news=[] ;

    if( response.statusCode==200){
      var notesJson=jsonDecode(response.body);
      for(var value in notesJson)
        news.add(News.fromeJson(value));
    }
    return news;

  }
}
