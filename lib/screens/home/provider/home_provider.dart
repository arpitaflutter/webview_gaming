import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class home_provider extends ChangeNotifier
{
  List images = [
    "assets/images/1.webp",
    "assets/images/2.webp",
    "assets/images/3.webp",
    "assets/images/4.webp",
    "assets/images/5.webp",
    "assets/images/6.webp",
    "assets/images/7.webp",
    "assets/images/8.webp",
    "assets/images/9.webp",
  ];

  void web()
  {
    WebViewController? webViewController;

    webViewController!.loadRequest(Uri.parse(""));
  }
}