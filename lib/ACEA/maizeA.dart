import 'package:flutter/material.dart';

class maizeACEA extends StatefulWidget {
  @override
  _maizeACEA createState() => _maizeACEA();
}

class _maizeACEA extends State<maizeACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Maize",
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
                    image: Image.asset("assets/maizeA.jpg").image,
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
                        TableCell(child: Text("BAUCHI")),
                        TableCell(child: Text("Ningi")),
                        TableCell(child: Text("Ningi, Bungan Ningi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Perma, Banga, Kukuta")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Toro")),
                        TableCell(child: Text("Sanga, Ririwan Dalma, Wono ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text("Badikko, Rabina, Barkin Kogi, Wono")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Martari ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shira")),
                        TableCell(child: Text("Shira")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Funtua ")),
                        TableCell(child: Text("Funtua ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bauchi")),
                        TableCell(child: Text("Bauchi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Misau")),
                        TableCell(child: Text("Misau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Warji")),
                        TableCell(child: Text("Warji")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Itas Gadau")),
                        TableCell(child: Text("Itas Gadau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("GOMBE")),
                        TableCell(child: Text("Yamaltu Deba  ")),
                        TableCell(child: Text("Yamaltu Deba ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Akko ")),
                        TableCell(child: Text("Akko ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Nafada ")),
                        TableCell(child: Text("Nafada ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Billiri")),
                        TableCell(child: Text("Billiri")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kwami")),
                        TableCell(child: Text("Kwami")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KADUNA")),
                        TableCell(child: Text("Birinin Gwari  ")),
                        TableCell(child: Text(" Dandamo, Mando, Birnin Gwari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Birnin Gwari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lere")),
                        TableCell(child: Text("Rahama")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lere")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kubau ")),
                        TableCell(child: Text("Anchau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kubau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Soba")),
                        TableCell(
                            child: Text(
                                "bele bele, soba, mai birni, Gimba gimba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Soba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Makarfi")),
                        TableCell(child: Text("Makarfi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Giwa")),
                        TableCell(child: Text("Giwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Katsina ")),
                        TableCell(child: Text("Dutsin Ma")),
                        TableCell(child: Text("Safana, Runka")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kankara")),
                        TableCell(
                            child: Text("Jekareda, Kurba, Danmarike, Pauwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Malunfashi")),
                        TableCell(
                            child: Text(
                                "Unguwan Ari, Karfi, Malunfashi, Dan Garba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Funtua ")),
                        TableCell(child: Text("Funtua, Mahuta")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dandume ")),
                        TableCell(child: Text("Dalawa, Anguwan Doro")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Faskari")),
                        TableCell(child: Text("Faskari, Shemi, Bardai")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kankara ")),
                        TableCell(child: Text("Kankara ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Matazu ")),
                        TableCell(child: Text("Matazu ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Musawa")),
                        TableCell(child: Text("Musawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Faskari")),
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
                        TableCell(child: Text("Kwara")),
                        TableCell(child: Text("Pategi ")),
                        TableCell(child: Text("Pategi ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Edu")),
                        TableCell(child: Text("Edu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Niger")),
                        TableCell(child: Text("Lapai")),
                        TableCell(child: Text("Lapai")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Agaie")),
                        TableCell(child: Text("Agaie")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bida")),
                        TableCell(child: Text("Bida")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Mashegu ")),
                        TableCell(child: Text("Mashegu ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Mokwa")),
                        TableCell(child: Text("Mokwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shiroro")),
                        TableCell(child: Text("Shiroro")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kontagora")),
                        TableCell(child: Text("Kontagora")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OYO ")),
                        TableCell(child: Text("Saki East")),
                        TableCell(child: Text("Saki East")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Orelope")),
                        TableCell(child: Text("Orelope")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Irepo ")),
                        TableCell(child: Text("Irepo, Kishi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NASSARAWA")),
                        TableCell(child: Text("Doma")),
                        TableCell(
                            child: Text(
                                "Doma, Rutu, Barakin Abdullahi, Akwiya, Ankani, Gindi Mango")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Awe")),
                        TableCell(child: Text("Akerra, Egud, Atakwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text(
                                "Lafia, Keffi, Kokona, Nassarawa Egon, Obi, Totio")),
                        TableCell(
                            child: Text(
                                "Adiere, Awe, Gandu, Adogi, Agode, Giringwe, Akogi, Gidan Mai Akwiya")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("TARABA")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KOGI")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                      ]),
                    ],
                  ))
            ]))));
  }
}
