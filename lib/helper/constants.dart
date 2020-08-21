import 'package:flutter/material.dart';

class Constants {
  static String appName = "AAYAL'S WORLD";
  static String appPackage = "com.onlinedisruptor.aayal";

  //Admob Setup
  static String strAdmobAppId ="#";
  static String strBannerAdId ="#";
  static String strInterstitialAdId ="#";

  //OTP Setup
  static String msg91AuthKey="338231AaCXcgUJOf5f2d563dP1";

  static String appAbout =
      "<html>"
      "<head>"
      "<style>"
      "body {background-color: black;}"
     // ".b{color:black;}"
      ".h{color:red;}"
      ".p{color:white}"
      "p{color:white}"
      "</style>"
      "</head>"
      "<body >"
      "<div class='b'>"
      "<h3 class='h'>What will be your go-to app when you want to watch some baby videos in your leisure time? This app is the answer. .</h3>"

      "<p class='p'>Aayal’s World is an app that is full of surprises that will make your day. It will open the door to cuteness with consistent content of the cutest baby on the planet Aayal’s daily life that she will be sharing with you.</p>"
      '<p>This app is available for both Android and IOS users. </p>'
      "<p>Experience the life of a princess who just loves sharing her smile with you that will make your day while you sit back and relax on your couch. You will be smiling and laughing at her innocence and cuteness.</p>"
      "<p>This app is for everyone. From kids to adults. Everyone can watch these posts and content. This is just something totally unique and great.</p>"
     "</div>"
      "</body>"
      "</html>";

  static String appPrivacy = "<h3>Privacy Policy</h3>"
      "Most people wouldn’t even consider getting a physical morning newspaper anymore, "
      "so we depend on digital sources for our news. Finding an app that helps you get the news you want in a timely manner is essential."
      "<p>Now all are in your handy. The app contains so many popular categories of news. Such as news, business, magazines, sports, jobs, technology and entertainment. You can read, bookmark, and share the news with others.</p>"
      '<p>Now all are in your handy. The app contains so many popular categories of news. Such as news, business, magazines, sports, jobs, technology and entertainment. You can read, bookmark, and share the news with others.</p>'
      "<p>Now all are in your handy. The app contains so many popular categories of news. Such as news, business, magazines, sports, jobs, technology and entertainment. You can read, bookmark, and share the news with others.</p>"
      "<p>Now all are in your handy. The app contains so many popular categories of news. Such as news, business, magazines, sports, jobs, technology and entertainment. You can read, bookmark, and share the news with others.</p>";

  static Color lightPrimary = Colors.white;
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.red;
  static Color darkAccent = Colors.redAccent;
  static Color lightBG = Color(0xFFFAFAFA);
  static Color darkBG = Color(0xFF2C2C2C);

  static ThemeData lightTheme = ThemeData(
    fontFamily: "Poppins",
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: "Poppins",
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: "Poppins",
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}
