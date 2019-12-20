import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './main.dart';

class AlDialog extends StatelessWidget {
  final String text;

  final Function setText;

  AlDialog(this.text, this.setText);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Dialog Page',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Dialog Page",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        child: CupertinoAlertDialog(
          content: Text(text),
          title: Text("Title"),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text("OK"),
              onPressed: setText,
            ),
            CupertinoDialogAction(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => Home(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
