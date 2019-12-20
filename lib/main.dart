import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './Dialog.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "before clicking";

  void _setText() {
    setState(() {
      if (text == 'before clicking') {
        text = "after clicking OK!";
      } else {
        text = "before clicking";
      }
    });
  }

  var bol = false;

  @override
  Widget build(BuildContext context) {
    return (Platform.isIOS)
        ? CupertinoApp(
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Center(
                child: Builder(
                  builder: (context) => CupertinoButton(
                      child: Text('OK'),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    AlDialog(text, _setText)));
                      }),
                ),
              ),
            ),
          )
        : MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  "Android",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Colors.blue,
              ),
              body: Center(
                child: Text("Android"),
              ),
            ),
          );
  }
}
