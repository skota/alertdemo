import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Show dialog"),
              onPressed: () {
                return _showDialog(context);
              },
            ),
            SizedBox(height: 40),
            RaisedButton(
              child: Text("Show dialog with dismiss"),
              onPressed: () {
                return _showClickToDimiss(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    //define dialog
    var alertDialog = AlertDialog(
      title: Text("Welcome"),
      content: Text(
          "Feel free to look around. Click anywhere outside the dialog to dismiss."),
    );

    //show dialog
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  void _showClickToDimiss(BuildContext context) {
    //define dialog
    var alertDialog = AlertDialog(
      title: Text("Welcome"),
      content: Text("Feel free to look around. Click 'X' to dismiss."),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            //
            Navigator.of(context).pop();
          },
        )
      ],
    );

    //show dialog
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
