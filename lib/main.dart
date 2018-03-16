import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    "Shoho class light aircraft carrir",
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  "Zuiho",
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ]
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text("41"),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label){
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color,),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color
              ),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.speaker, "VOICE"),
          buildButtonColumn(Icons.star, "FAVORITE"),
          buildButtonColumn(Icons.list, "ADD LIST")
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        """
Zuiho is SHOHO_CLASS aircraft carrir.
She was planned fast fleet replenishment oiler and in next built submarine base ship. Finally she have been remodeled aircraft carrir.
Zuiho, which is small ship however, fought headly until the final day as last First Japanese Aircraft Forces.
        """,
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Zuiho"),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              "content/images/zuiho.png",
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
