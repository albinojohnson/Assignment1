import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEx extends StatefulWidget {


  @override
  State<WebViewEx> createState() => _State();
}

class _State extends State<WebViewEx> {
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://en.wikipedia.org/wiki/Zhangjiajie_National_Forest_Park'));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Widget'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}



void main(){
  runApp(MaterialApp(home: WebViewEx (),));
}