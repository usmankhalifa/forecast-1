import 'package:flutter/material.dart';

class soyaACEA extends StatefulWidget {
  @override
  _soyaACEA createState() => _soyaACEA();
}

class _soyaACEA extends State<soyaACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Soya",
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
                    image: Image.asset("assets/soyaA.jpg").image,
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
                        TableCell(child: Text("BENUE")),
                        TableCell(child: Text("Makurdi")),
                        TableCell(child: Text("Ihalau, Kopii, Ihyeu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Buruku")),
                        TableCell(child: Text("Ugba, Buruku, Ashamena")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Guma")),
                        TableCell(child: Text("Agasha, Angula")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gwer West")),
                        TableCell(child: Text("Epe, Egud")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Vande Ikya")),
                        TableCell(child: Text("Ihugh, Mbara")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Agatu")),
                        TableCell(child: Text("Odeji, Akoro")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ADAMAWA")),
                        TableCell(child: Text("Otukpo")),
                        TableCell(child: Text("Idekpa, Ochobo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Demsa")),
                        TableCell(child: Text("Riga Fulani, Chindam")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Yola South")),
                        TableCell(child: Text("Bulamare, Gaulire")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Girei ")),
                        TableCell(child: Text("Jiberu, modibbo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("GOMBE")),
                        TableCell(child: Text("Mubi North")),
                        TableCell(child: Text("Muya, Wuro Kaye")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Fufore")),
                        TableCell(child: Text("bodere, Ribadu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shelleng ")),
                        TableCell(child: Text("Bugila, Bonga")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Guyuk")),
                        TableCell(child: Text("Dabewa, Bopari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Numan")),
                        TableCell(child: Text("Agbalapin, Ngwalti")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KWARA")),
                        TableCell(child: Text("Kaiama")),
                        TableCell(child: Text("Jekama, Gberia")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Asa ")),
                        TableCell(child: Text("Ahoro, Aiyede, Abduka")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Moro")),
                        TableCell(child: Text("Moro, Aro, Amu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Illorin East")),
                        TableCell(child: Text("Ariori, Oloru, Ara")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("TARABA")),
                        TableCell(child: Text("Gassol")),
                        TableCell(child: Text("Manji, Nabayi, Mutum biyu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Takum")),
                        TableCell(
                            child: Text("Dogon gawa, Tor ikyeghba, Village")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Wukari ")),
                        TableCell(
                            child: Text("Bantaji, Gada Mayo, Anzwa, Kikundu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Kaduna ")),
                        TableCell(child: Text("Birinin Gwari")),
                        TableCell(child: Text("Dandamo, Mando, Birnin Gwari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lere ")),
                        TableCell(child: Text("Rahama")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lere")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kubau")),
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
                            child:
                                Text("bele bele, soba, mai birni, Gimba imba")),
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
                        TableCell(child: Text("Katsina")),
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
                        TableCell(child: Text("Malunfashi ")),
                        TableCell(
                            child: Text(
                                "Unguwan Ari, Karfi, Malunfashi, Dan Garba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Funtua")),
                        TableCell(child: Text("Funtua, Mahuta")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dandume ")),
                        TableCell(child: Text("Dalawa, Anguwan Doro")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Faskari ")),
                        TableCell(child: Text("Faskari, Shemi, Bardai")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kankara")),
                        TableCell(child: Text("Kankara")),
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
                        TableCell(child: Text("Sabuwa ")),
                        TableCell(child: Text("Sabuwa ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bakori ")),
                        TableCell(child: Text("Bakori ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Kwara ")),
                        TableCell(child: Text("Pategi")),
                        TableCell(child: Text("Pategi")),
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
                        TableCell(child: Text("Mokwa ")),
                        TableCell(child: Text("Mokwa ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shiroro")),
                        TableCell(child: Text("Shiroro ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kontagora")),
                        TableCell(child: Text("Kontagora")),
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
