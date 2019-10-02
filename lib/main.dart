import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar (
                  radius: 50.0,
                  backgroundImage: AssetImage('images/professional_zain.jpeg')
                ),
                SizedBox (height: 15.0),
                Text (
                  'Zain Khalid',
                    style: TextStyle(
                      letterSpacing: 0.5,
                      color: Colors.orange[500],
                      fontSize: 40.0,
                      fontFamily: 'AzoSans',
                      fontWeight: FontWeight.w600
                    ),
                ),
                SizedBox (height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset (
                      'svg/flutter.svg',
                      height: 30.0,
                    ),
                    SizedBox (width: 10.0),
                    SvgPicture.asset (
                      'svg/android.svg',
                      height: 30.0,
                    ),
                    SizedBox (width: 10.0),
                    SvgPicture.asset (
                      'svg/js.svg',
                      height: 30.0,
                    ),
                    SizedBox (width: 15.0),
                    Text (
                      'Developer',
                      style: TextStyle(
                        fontFamily: 'AzoSans',
                        fontWeight: FontWeight.w300,
                        color: Colors.orange[400],
                        fontSize: 25.0
                      ),
                    ),
                  ],
                ),
                Container (

                  child: Row (

                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
