import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Circular Progress Indicator')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Progress"),
                    Checkbox(
                        value: isShowing,
                        onChanged: (bool value) {
                          setState(() {
                            isShowing = value;
                          });
                        })
                  ],
                )
              ],
            ),
            // Progress
            isShowing == true ? CircularProgressIndicator() : Container()
          ],
        ),
      ),
    );
  }
}
