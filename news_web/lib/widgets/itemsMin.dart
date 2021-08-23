import 'package:flutter/material.dart';
import 'package:news_web/models/News.dart';

/// list item of news
class ItemsMin extends StatelessWidget {
  ///news object
  News news;

  ItemsMin(this.news);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => NewsPage(news)),
          // );
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
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                ///image news
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      news.image,
                      width: MediaQuery.of(context).size.width/4,
                      height:  MediaQuery.of(context).size.width/4,
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
                        child: Text(news.title,style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(news.author,style: TextStyle(fontSize: 10,color: Theme.of(context).primaryColor)),
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
