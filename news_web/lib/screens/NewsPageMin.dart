import 'dart:ui';

import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_web/models/News.dart';
import 'package:url_launcher/url_launcher.dart';
class NewsPageMin extends StatelessWidget {
  News news;
  NewsPageMin(this.news);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(

      ///AppBar
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    color: Theme.of(context).backgroundColor,
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                      Container(
                        color: Theme.of(context).primaryColor,
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
                padding: const EdgeInsets.only(top: 20,right: 20,bottom: 20),
                child: SvgPicture.asset('assets/icon.svg'),
              )
            ],
          )
      ),


      body: Container(
        color: Theme.of(context).backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:  ListView(

          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            FadeAnimation(0.5, Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: AnimatedContainer(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width ,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(30))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              news.image,
                              width: (MediaQuery.of(context).size.width * 2 / 3),
                              height: (MediaQuery.of(context).size.width * 2 / 3),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FadeAnimation(1, Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30 , left: 30 , bottom: 30 ),

                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Theme.of(context).primaryColor, blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeAnimation(1.5, Text(
                              news.title,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(2, Text(news.publisher,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          FadeAnimation(2.5, Text(news.text,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context).primaryColor)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FadeAnimation(3,Text("author:  " + news.author,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FadeAnimation(3.5, Text("date:  " + news.date,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FadeAnimation(4, Text("Full Story at:  ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FadeAnimation(4.5, InkWell(
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
