import 'package:flutter/material.dart';

class gingerACEA extends StatefulWidget {
  @override
  _gingerACEA createState() => _gingerACEA();
}

class _gingerACEA extends State<gingerACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Ginger",
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
                    image: Image.asset("assets/gingerA.jpg").image,
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
                        TableCell(child: Text("KADUNA")),
                        TableCell(child: Text("Zangon Kataf")),
                        TableCell(
                            child: Text(
                                "Zonkwa, Samaru, Katab, Zaman Dabo, Gidan Kigudu, Sako")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Jemaa")),
                        TableCell(
                            child:
                                Text("Anji, Unguwa Bako, Nungu, Anga, Akwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kachia")),
                        TableCell(child: Text("Jere ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Jaba")),
                        TableCell(child: Text("Kwoi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("BENUE")),
                        TableCell(child: Text("Makurdi ")),
                        TableCell(
                            child: Text(
                                "Makurdi, Anjie, Ogoh, Ataata, Utenger, Gyushage, Gwegwe, Atsaha")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NASARAWA")),
                        TableCell(child: Text("Keffi")),
                        TableCell(child: Text("Keffi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Akwanga ")),
                        TableCell(child: Text("Akwanga")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("GOMBE")),
                        TableCell(child: Text("Balanaga")),
                        TableCell(child: Text("Balanga")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NIGER")),
                        TableCell(child: Text("Gurara ")),
                        TableCell(child: Text("Gurara")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("IMO")),
                        TableCell(child: Text("Mbaitoli")),
                        TableCell(child: Text("Nwaorieubi, Ukwa Ngwu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ABIA")),
                        TableCell(child: Text("Uwka East/West")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ANAMBRA")),
                        TableCell(child: Text("Awka North")),
                        TableCell(child: Text("Igbariam")),
                      ]),
                    ],
                  ))
            ]))));
  }
}
