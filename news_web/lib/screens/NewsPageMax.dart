import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_web/models/News.dart';
import 'package:url_launcher/url_launcher.dart';
class NewsPageMax extends StatelessWidget {
  News news;
  NewsPageMax(this.news);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(

      ///AppBar
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        color: Theme.of(context).backgroundColor,
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 100,
                            width: MediaQuery.of(context).size.width/12,
                          ),
                          Container(
                            color: Theme.of(context).primaryColor,
                            height: 100,
                            width:  MediaQuery.of(context).size.width/12,
                          ),
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 100,
                            width:  MediaQuery.of(context).size.width/12,
                          ),
                          Container(
                            color: Theme.of(context).primaryColor,
                            height: 100,
                            width:  MediaQuery.of(context).size.width/12,
                          ),

                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Theme.of(context).primaryColor,
                        height: 100,
                        width:  MediaQuery.of(context).size.width/12,
                      ),
                      Container(
                        color: Theme.of(context).accentColor,
                        height: 100,
                        width:  MediaQuery.of(context).size.width/12,
                      ),
                      Container(
                        color: Theme.of(context).primaryColor,
                        height: 100,
                        width:  MediaQuery.of(context).size.width/12,
                      ),
                      Container(
                        color: Theme.of(context).accentColor,
                        height: 100,
                        width:  MediaQuery.of(context).size.width/12,
                      ),


                    ],
                  )
                ],
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY:1),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SvgPicture.asset('assets/icon.svg'),
              )
            ],
          )
      ),


      body: Container(
        color: Theme.of(context).backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [

                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2.7,
                            height:  MediaQuery.of(context).size.height/2,
                            color: Theme.of(context).backgroundColor,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/3,
                            height:  MediaQuery.of(context).size.width/2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*3.5/12,
                        height: MediaQuery.of(context).size.width*3.5/12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            news.image,
                            width: MediaQuery.of(context).size.width*3/12,
                            height: MediaQuery.of(context).size.width*3/12,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Theme.of(context).primaryColor, blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView(

                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          Text(
                            news.title,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(news.publisher,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 25,
                          ),
                          Text(news.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColor)),
                          SizedBox(
                            height: 30,
                          ),
                          Text("author:  " + news.author,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("date:  " + news.date,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic)),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Full Story at:  ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic)),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            child: Text(
                              news.url,
                              style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () async {
                              if (await canLaunch(news.url))
                                await launch(news.url);
                            },
                          ),
                          SizedBox(
                            height: 25,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
