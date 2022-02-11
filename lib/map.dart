import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BloodMap extends StatefulWidget {
  const BloodMap({Key? key}) : super(key: key);

  @override
  State<BloodMap> createState() => _BloodMapState();
}

class _BloodMapState extends State<BloodMap> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.google.com/maps/search/blood+bank+near+me/',
    );
  }
}
