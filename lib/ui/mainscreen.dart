import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:developer';

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState()=>new _MyAppState();
}

class _MyAppState extends State<MyApp>{

  _MyAppState(){
    listItems.add(createListItem("hoge"));
    listItems.add(createListItem("fuga"));
    listItems.add(createListItem("piyo"));
  }

  var listItems = new List<ListTile>();

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "dynamic listview",
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("test"),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.plus_one),
          onPressed: (){ addListItem("added item"); },
        ),
        body: new ListView(
          children: listItems.toList()
        ),
      )
    );
  }

  ListTile createListItem(String text){
    return new ListTile(
      title: new Text(
        text,
        style: new TextStyle(fontSize: 24.0),
      ),
      onTap: (){_onTap();},
    );
  }

  void addListItem(text){
    setState((){
      listItems.insert(0, createListItem("added items"));
      debugPrint("called\nList items : ${listItems.join(",")}");
    });
  }

  Future<Null> _onTap () async{
    setState((){
      showDialog<Null>(
        context: context,
        barrierDismissible: false,
        child: new AlertDialog(
          title: new Text("Sample"),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text("Sample Text A"),
                new Icon(Icons.star),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: (){Navigator.of(context).pop();},
            )
          ],
        )
      );
    });
  }
}
