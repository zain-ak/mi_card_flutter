import 'package:flutter/material.dart';

void main() {
  runApp(
    MiCard()
  );
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[900],
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Container(
                width: 100,
                color: Colors.yellow
              ),
              Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.blue
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.orange
                  ),
                ],
              ),
              Container (
                  width: 100,
                  color: Colors.pink
              ),
            ],
          ),
        ),
      ),
    );
  }
}
