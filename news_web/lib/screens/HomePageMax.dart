import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_web/screens/HomePageMin.dart';


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
            )
          ],
        ),
      ),


    );
  }
}
