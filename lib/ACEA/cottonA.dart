import 'package:flutter/material.dart';

class cottonACEA extends StatefulWidget {
  @override
  _cottonACEA createState() => _cottonACEA();
}

class _cottonACEA extends State<cottonACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Cotton",
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
                    image: Image.asset("assets/cottonA.jpg").image,
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
                        TableCell(child: Text("KATSINA")),
                        TableCell(child: Text(" Dutsin Ma")),
                        TableCell(child: Text("Dutsin Ma")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kankara")),
                        TableCell(child: Text("Kankara")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Malumfashi ")),
                        TableCell(child: Text("Malumfashi ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Matazu")),
                        TableCell(child: Text("Matazu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Musawa ")),
                        TableCell(child: Text("Musawa ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Faskari")),
                        TableCell(child: Text("Faskari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Funtua ")),
                        TableCell(child: Text("Funtua ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dandume")),
                        TableCell(child: Text("Dandume")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Sabuwa")),
                        TableCell(child: Text("Sabuwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bakori")),
                        TableCell(child: Text("Bakori")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("GOMBE")),
                        TableCell(child: Text("Yamaltu/Deba")),
                        TableCell(child: Text("Yamaltu/Deba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Nafada ")),
                        TableCell(
                            child: Text(
                                "Dadin Kowa, Fusami, Garin Aba, Tudun Wada, Jigawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dukku")),
                        TableCell(child: Text("Dukku")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ADAMAWA")),
                        TableCell(child: Text("Numan")),
                        TableCell(child: Text("Numan")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Guyuk")),
                        TableCell(child: Text("Guyuk")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Demsa")),
                        TableCell(child: Text("Demsa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Yola South ")),
                        TableCell(child: Text("Fufore, Jimeta")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ZAMFARA")),
                        TableCell(child: Text("Tsafe")),
                        TableCell(child: Text("Tsafe")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Maru")),
                        TableCell(child: Text("Mutumji, Dan sadau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KANO")),
                        TableCell(child: Text("Bagwai")),
                        TableCell(child: Text("Bagwai")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gwarzo")),
                        TableCell(child: Text("Gwarzo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kiru")),
                        TableCell(child: Text("Kiru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gulani")),
                        TableCell(child: Text("Ninowa, Kusawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Karasuwa")),
                        TableCell(child: Text("Jajimaji, Nguru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NASARAWA")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NIGER")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KADUNA")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                      ]),
                    ],
                  ))
            ]))));
  }
}
