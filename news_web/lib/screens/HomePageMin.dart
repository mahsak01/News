import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


///home page
class HomePageMin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      ///app bar
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Theme.of(context).accentColor,
              width:  MediaQuery.of(context).size.width/12,
            ),
            Container(
              color: Theme.of(context).backgroundColor,
              width:  MediaQuery.of(context).size.width/12,
            ),
            Container(
              color: Theme.of(context).primaryColor,
              width:  MediaQuery.of(context).size.width/12,
            )


          ],
        ),
      ),


    );
  }
}