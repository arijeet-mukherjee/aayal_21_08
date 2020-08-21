import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helper/constants.dart';

class ClickCount {
  AdmobInterstitial interstitialAd;

  ClickCount(){
    interstitialAd = AdmobInterstitial(
      adUnitId: Constants.strInterstitialAdId,
    );
    interstitialAd..load();
  }

  //Use this class if you are building for both Android and iOS
  String getInterstitialAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/3964253750';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/7049598008';
    }
    return null;
  }

  static Future<bool> showAds() async {
    int iCount;
    bool ads = false;
    final prefs = await SharedPreferences.getInstance();
    iCount = prefs.getInt("click") == null ? 0 : prefs.getInt("click");
    if (iCount == 2) {
      iCount = 0;
      ads = true;
    } else {
      iCount++;
    }
    prefs.setInt("click", iCount);
    print("Click Count $iCount");
    return ads;
  }

  Future<void> showInterstitial() async {
    bool result = await ClickCount.showAds();
    if(result){
      if (await interstitialAd.isLoaded) {
        interstitialAd.show();
      }
      //interstitialAd..load();
    }
  }
}
