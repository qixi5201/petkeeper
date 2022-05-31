import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app_body.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appTitle=Text('寵物記錄App',style:TextStyle(fontSize: 24.0,),);
    var appBody=AppBody();
    var appBar=AppBar(
      title: appTitle,
      backgroundColor: Colors.grey,
    );
    var app=MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar,
        body: appBody,
      ),
    );
    return app;
  }
}
