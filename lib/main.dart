import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MiCard()
  );
}

_launchGit() async {
  const url = 'https://github.com/zain-ak';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchPhone() async {
  const url = 'tel: +1 647 906 9242';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchMail() async {
  const url = 'mailto:zain@zainkhalid.me?subject=Hey%20Zain!';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
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
                      fontFamily: 'Mansalva',
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
                        fontFamily: 'Mansalva',
                        fontWeight: FontWeight.w500,
                        color: Colors.orange[400],
                        fontSize: 25.0
                      ),
                    ),
                  ],
                ),
                Card (
                    margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
                    child: ListTile (
                      leading: SvgPicture.asset (
                        'svg/github.svg',
                        height: 30.0,
                        color: Colors.purple[500],
                      ),
                      title: Text (
                            'github.com/zain-ak',
                            style: TextStyle(
                              color: Colors.purple[900],
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500
                            )
                          ),
                      onTap: _launchGit,
                    ),
                  ),
                Card (
                  margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
                  child: ListTile (
                    leading: Icon (
                      Icons.phone_android,
                      color: Colors.purple[500],
                    ),
                    title: Text (
                        '+1 647-906-9242',
                        style: TextStyle(
                            color: Colors.purple[900],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    onTap: _launchPhone,
                  ),
                ),
                InkWell(
                  onTap: _launchMail,
                  child: Container (
                      decoration: BoxDecoration (
                          gradient: LinearGradient(begin: Alignment(0.25, 0.0), end: Alignment(1.0, 0), colors: [Colors.white, Colors.purple[300]]),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      //                  color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
                      padding: EdgeInsets.all(10.0),
                      child: Row (
                        children: <Widget>[
                          Icon (
                              Icons.email,
                              color: Colors.purple[500]
                          ),
                          SizedBox (width: 15.0),
                          Text (
                              'zain@zainkhalid.me',
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500
                              )
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


