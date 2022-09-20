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
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              new Text(
                'Overlay of Cassava ACEA across Nigeria',
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
              )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                  child: Table(
                    //table border
                    children: [
                      TableRow(children: [
                        TableCell(
                            child: Text(
                          "STATES ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        TableCell(
                            child: Text(
                          "L.G.A ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        TableCell(
                            child: Text(
                          "PROXIMAL LOCATIONS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NASARAWA")),
                        TableCell(child: Text(" Kokona ")),
                        TableCell(child: Text("Gudi, Garaku")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Doma")),
                        TableCell(child: Text("Gindi Mango, Akwiya")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("FCT")),
                        TableCell(child: Text("Abaji ")),
                        TableCell(
                            child: Text("Takura, Gomani, Pate, Nagpakuku ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("YOBE ")),
                        TableCell(child: Text("Gulani")),
                        TableCell(child: Text("Ashaka, Bara")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("JIGAWA")),
                        TableCell(child: Text("Gumel ")),
                        TableCell(child: Text("Medu, Gumel")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ringim")),
                        TableCell(child: Text("Gerawa, Dabi, Dabigel")),
                      ]),
                    ],
                  ))
            ]))));
  }
}
