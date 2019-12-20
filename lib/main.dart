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
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.blue,
          middle: Title(
            child: Text(
              'Hey',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.white,
            title: 'Home',
          ),
          automaticallyImplyLeading: true,
        ),
        child: Center(
          child: Builder(
            builder: (context) => CupertinoButton(
                child: Text('OK'),
                color: Color.fromARGB(255, 105, 169, 229),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => AlDialog(text, _setText)));
                }),
          ),
        ),
      ),
    );
  }
}
