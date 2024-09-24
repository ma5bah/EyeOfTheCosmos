import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebviewScreen extends StatefulWidget {
  String link;
  WebviewScreen({super.key, required this.link});

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  bool _isLoading = false;
  late final WebViewController _webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted) //which device can open
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
          setState(() {
            _isLoading = true; // WebView started loading
          });
        },
        onPageStarted: (String url) {
          print("Page started");
          setState(() {
            _isLoading = false; // WebView started loading
          });
        },
        onPageFinished: (String url) {
          print("Page finished");
           setState(() {
              _isLoading = false; // WebView started loading
            });
          if (url.endsWith("tran_type=success")) {
          }
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }

          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(widget.link));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : WebViewWidget(
              controller: _webViewController,
            ),
    );
  }
}
