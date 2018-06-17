import 'package:myapp/component/listitem.dart';
import 'dart:async';

class NewListItem{
  final String name;
  NewListItem(this.name);
}

class ListBloc{
  final StreamController<NewListItem> _streamController = new StreamController<NewListItem>();

  Sink<NewListItem> input;
  Stream<NewListItem> output;

  

  void dispose(){
    _streamController.close();
  }
}