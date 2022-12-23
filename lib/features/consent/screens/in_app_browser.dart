import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vitta/Global_widgets_and_files/commons.dart';

class InAppBrowserScreen extends StatefulWidget {
  static const String routeName = "/InAppBrowser";
  const InAppBrowserScreen({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  State<InAppBrowserScreen> createState() => _InAppBrowserScreenState();
}

class _InAppBrowserScreenState extends State<InAppBrowserScreen> {
  double _progress = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: globalAppBarColor,
        centerTitle: true,
        elevation: 0,
        title: const Text("Opening Request"),
      ),
      body: Stack(children: [
        InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.url),
            ),
            onWebViewCreated: (controller) => webView = controller,
            onProgressChanged: (controller, progress) => setState(() {
                  _progress = progress / 100;
                })),
        _progress < 1
            ? SizedBox(
                height: 3,
                child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor:
                        Theme.of(context).backgroundColor.withOpacity(0.2)),
              )
            : const SizedBox()
      ]),
    );
  }
}
