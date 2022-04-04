import 'package:flutter/material.dart';

class sesameACEA extends StatefulWidget {
  @override
  _sesameACEA createState() => _sesameACEA();
}

class _sesameACEA extends State<sesameACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Sesame",
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              new Text(
                'Overlay of Sesame',
                style: new TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
              InteractiveViewer(
                  child: Container(
                padding: const EdgeInsets.all(90.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    image: Image.asset("assets/sesameA.jpg").image,
                  ),
                ),
              ))
            ])));
  }
}
