import 'package:flutter/material.dart';
import 'package:news_app/models/News.dart';

/// list item of news
class ListItem extends StatelessWidget {
  ///news object
  News news;

  ListItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(news.title,style: TextStyle(fontSize: 15,color: Colors.black),),
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
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Expanded(
          //             child:  Padding(
          //               padding: const EdgeInsets.only(bottom: 15),
          //               child: Text(news.title,
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 16,
          //                 color: Colors.black
          //               ),),
          //             ),
          //         )
          //       ],
          //     ),
          //     Container(
          //       height: 50,
          //       child: Align(
          //         alignment: Alignment.bottomRight,
          //         child: IconButton(
          //              iconSize: 16,
          //             alignment: Alignment.bottomCenter,
          //             onPressed: (){},
          //             icon: Icon(Icons.arrow_forward_ios)),
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
