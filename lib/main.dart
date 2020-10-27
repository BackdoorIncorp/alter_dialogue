import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  Future showAlert(BuildContext context,String message) async{
    return showDialog(context: context,child: new AlertDialog(title: new Text(message),actions: [
      new FlatButton(onPressed: () => Navigator.pop(context), child: new Text("oK"))

    ],));
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Hello World"),
              new RaisedButton(onPressed: () => showAlert(context, "Do you like Flutter"),child: new Text("Alter"))
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}