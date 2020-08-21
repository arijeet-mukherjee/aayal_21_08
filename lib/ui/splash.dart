import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'main_activity.dart';
import '../providers/home_provider.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, nextPage);
  }

  nextPage() async {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: MainActivity(),
      ),
    );
    Provider.of<HomeProvider>(context, listen: false).getFeeds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welocme to my world Aayals world.',// Add description of aayal
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "- Aayal's World",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "assets/images/ic_splash.png",
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
