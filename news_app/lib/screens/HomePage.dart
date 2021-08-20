import 'package:flutter/material.dart';

//Home page Class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
}
