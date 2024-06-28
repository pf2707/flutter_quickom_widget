library flutter_quickom_widget;

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FlutterQuickomWidget extends StatefulWidget {

  double? width;
  double? height;

  FlutterQuickomWidget({super.key, this.width, this.height});

  @override
  State<FlutterQuickomWidget> createState() => _FlutterQuickomWidgetState();
}

class _FlutterQuickomWidgetState extends State<FlutterQuickomWidget> {

  late WebViewController _webviewController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _config();
  }

  _config() {
    var url = "https://sdk.chat3.one/spin";
    try {
      var uri = Uri.parse(url);
      _webviewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.white)
        ..loadRequest(uri);
    } catch (e) {
      log('can not load url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: WebViewWidget(
        controller: _webviewController,
      ),
    );
  }
}
