import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(
    title: 'umitkoc.com',
    debugShowCheckedModeBanner: false,
    home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController webViewController;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: "http://www.youtube.com/",
            onWebViewCreated: (controller) => webViewController = controller,
          ),
        ),
      );
}
