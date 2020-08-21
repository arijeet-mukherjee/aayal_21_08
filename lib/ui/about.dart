import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


import '../helper/constants.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with TickerProviderStateMixin {
  bool webView = true;
  bool webViewJs = true;


  List<WebViewController> _listController = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
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
                      height:600,
                      color: Theme.of(context).primaryColor,

                      child: WebView(
                        //"${Constants.appAbout}",
                        //unsupportedWebViewWorkaroundForIssue37: true,
                        //webView: webView,
                        //webViewJs: webViewJs,

                        initialUrl: 'data:text/html;base64,${base64Encode(const Utf8Encoder().convert(Constants.appAbout))}',
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
                                'Cool...!',)
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
