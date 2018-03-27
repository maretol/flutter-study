import 'package:flutter/material.dart';
import 'dart:async';

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=>new _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  _MyAppState(){
    listItems1.add(createListItem("list1", "hoge"));
    listItems1.add(createListItem("list1", "fuga"));
    listItems1.add(createListItem("list1", "piyo"));
    listItems2.add(createListItem("list2", "hoge"));
    listItems2.add(createListItem("list2", "hoge"));
    listItems2.add(createListItem("list2", "fuga"));
    listItems2.add(createListItem("list2", "piyo"));
    listItems3.add(createListItem("list3", "hoge"));
    listItems3.add(createListItem("list3", "fuga"));
    listItems3.add(createListItem("list3", "piyo"));

    _map = {
      0: listItems1,
      1: listItems2,
      2: listItems3,
    };
  }

  @override
  void initState(){
    super.initState();
    _controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  var listItems1 = new List<ListTile>();
  var listItems2 = new List<ListTile>();
  var listItems3 = new List<ListTile>();
  TabController _controller;
  Map _map;

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "dynamic listview",
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("test"),
          bottom: new TabBar(
            controller: _controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.train),),
              new Tab(icon: new Icon(Icons.directions_car),),
              new Tab(icon: new Icon(Icons.home),),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.plus_one),
          onPressed: (){ addListItem(_map[_controller.index], "added item"); },
        ),
        body:
          new TabBarView(
            controller: _controller,
            children: <Widget>[
              new ListView(children: listItems1.toList()),
              new ListView(children: listItems2.toList()),
              new ListView(children: listItems3.toList())
            ],
          )
      )
    );
  }

  ListTile createListItem(String listname,String text){
    return new ListTile(
      title: new Text(
        listname + text,
        style: new TextStyle(fontSize: 24.0),
      ),
      onTap: (){_onTap();},
    );
  }

  void addListItem(List<Widget> list ,String text){
    setState((){
      list.insert(0, createListItem("in list ", " added items"));
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
