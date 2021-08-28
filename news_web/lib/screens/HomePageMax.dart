import 'dart:ui';

import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_web/models/PublicValue.dart';
import 'package:news_web/screens/HomePageMin.dart';
import 'package:news_web/widgets/ItemsMax.dart';


///home page
class HomePageMax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///app bar
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
        child: Row(
          children: [
            Container(
              color: Theme.of(context).accentColor,
              width:  MediaQuery.of(context).size.width/12,
            ),
            Container(
              width: MediaQuery.of(context).size.width*11/12,
              child: GridView.count(
                  childAspectRatio: (180 / 320),
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 5,
                  crossAxisCount: ((MediaQuery.of(context).size.width/320).floor()==1)?2:(MediaQuery.of(context).size.width/320).floor(),
                  shrinkWrap: true,
                  children: List.generate(newsInApp.length, (index) {
                    return  FadeAnimation(0.5*index,SizedBox(width: 320,child: ItemsMax(newsInApp[index])));
                  }).toList()
              ),
            )
          ],
        ),
      ),


    );
  }
}
