import 'package:flutter/material.dart';
import 'package:news_app/models/News.dart';
import 'package:news_app/screens/NewsPage.dart';

/// list item of news
class ListItem extends StatelessWidget {
  ///news object
  News news;

  ListItem(this.news);

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                ///image news
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Image.network(
                     news.image,
                     width: MediaQuery.of(context).size.width/3,
                     height:  MediaQuery.of(context).size.width/3,
                     fit: BoxFit.fill,
                   ),
                 ),
               ),

                ///text news
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(news.title,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(news.author,style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor)),
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
}
