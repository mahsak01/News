import 'package:flutter/material.dart';
import 'package:news_web/models/News.dart';
import 'package:news_web/screens/NewsPage.dart';
import 'package:sizer/sizer.dart';

/// list item of news
class ItemsMax extends StatelessWidget {
  ///news object
  News news;

  ItemsMax(this.news);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewsPage(news)),
          );
        },
        child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(color: Theme.of(context).primaryColor, blurRadius: 1)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                ///image news
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      news.image,
                      width: 200,
                      height:  200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                ///text news
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(checkTitle(news.title),style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13),
                        child: Text(checkAuthor(news.author),style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor)),
                      ),

                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }

  String checkTitle(String input){
    String result="";
    for(var i=0; i<input.length && i<=60;i++)
      result+=input[i];
    return result+"...";
  }
  String checkAuthor(String input){
    String result="";
    for(var i=0; i<input.length && i<=30;i++)
      result+=input[i];
    return result+"...";
  }
}
