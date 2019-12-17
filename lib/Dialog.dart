import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlDialog extends StatelessWidget {
  final String text;

  AlDialog(this.text);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Text(text),
      title: Text("Title"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("OK"),
          onPressed: null,
        ),
        CupertinoDialogAction(
          child: Text("Cancel"),
          onPressed: null,
        )
      ],
    );
  }
}


