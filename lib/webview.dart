import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApppp());

class MyApppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ACEA app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text("Map"),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: WebView(
          initialUrl:
              "https://app.powerbi.com/reportEmbed?reportId=3c98e11a-2fc7-428d-a235-99b6070d4d71&autoAuth=true&ctid=cfacc021-35dc-4abc-9bd6-8f874eda6e82&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLWV1cm9wZS1ub3J0aC1iLXJlZGlyZWN0LmFuYWx5c2lzLndpbmRvd3MubmV0LyJ9",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
