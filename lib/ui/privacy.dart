import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../helper/constants.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> with TickerProviderStateMixin {
  bool webView = true;
  bool webViewJs = true;
  List<WebViewController> _listController = List();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height:3000,
                      color: Theme.of(context).primaryColor,

                      child: WebView(
                        //"${Constants.appAbout}",
                        //unsupportedWebViewWorkaroundForIssue37: true,
                        //webView: webView,
                        //webViewJs: webViewJs,

                        initialUrl: 'https://onlinedisruptor.com/privacy/',
                        onPageFinished: (some) async {
                          double height = double.parse(await _listController[0]
                              .evaluateJavascript(
                              "document.documentElement.scrollHeight;"));
                          setState(() {

                          });
                        },
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (controller) async {
                          _listController.add(controller);
                        },


                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SafeArea(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Theme.of(context).accentColor, width: 1),
                              ),
                              child: Text(
                                'Thanks...!',)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
