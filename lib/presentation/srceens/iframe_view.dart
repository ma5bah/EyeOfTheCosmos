import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class IFrameView extends StatefulWidget {
  final String url; // Add a URL parameter

  const IFrameView({super.key, required this.url}); // Add required keyword for URL

  @override
  State<IFrameView> createState() => _IFrameViewState();
}

class _IFrameViewState extends State<IFrameView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url), // Use the passed URL here
      );
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
        controller: controller,
      );
  }
}
