import 'package:flutter/material.dart';

class cassavaACEA extends StatefulWidget {
  @override
  _cassavaACEA createState() => _cassavaACEA();
}

class _cassavaACEA extends State<cassavaACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Cassava",
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
                    fontSize: 15.0,
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
                    image: Image.asset("assets/cassavaA.jpg").image,
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
                        TableCell(child: Text("ENUGU")),
                        TableCell(child: Text("Uzo-Uwani")),
                        TableCell(child: Text("Uzo-Uwani, Enugu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Isi-Uzo ")),
                        TableCell(child: Text("ogo Ndago,Odenigbo,Omanze")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Udi ")),
                        TableCell(child: Text("Eke,Ebe, Ukana,Abor,Akam Oye")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Enugu East")),
                        TableCell(
                            child: Text("Effokwa, Abakpa Nike, Onuba, Owo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Nkanu East")),
                        TableCell(child: Text("Ugboka, Amagunze")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text(
                                "Nenwe, Nomeh, Mberugbu, Amaofu, Etu, Ndeabo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Aninri ")),
                        TableCell(child: Text("Etu, Aninri, Ndeabo, Mpu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Oji River")),
                        TableCell(
                            child: Text("Ohali,Amaetiti,Akpugo,Nkwerrem Inyi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Nsukka")),
                        TableCell(
                            child: Text("Ibegwa-Ani, Obukpa, Ibegwa-Aka")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("IMO")),
                        TableCell(child: Text("Ngor Okpala")),
                        TableCell(child: Text("Elelem, Umuneke, Eziama")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Njaba")),
                        TableCell(child: Text("Nnenasa, Umuaka, Njaba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ohaji/Egbema  ")),
                        TableCell(child: Text("Awarra,Opete,Egbeda")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Amafor,Imo,Ejemekwuru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KOGI")),
                        TableCell(child: Text("Okehi ")),
                        TableCell(
                            child: Text("Ogidi, Ayere, Kakuma, Adugi, Obele")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lokoja ")),
                        TableCell(child: Text("Dere, Emoa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Zongon Daji, Otokiti")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kabba/Bunu ")),
                        TableCell(child: Text("Kakun, Ogidi, Okebukun, Kabba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ibaji")),
                        TableCell(child: Text("Odeke, Ilushi, Adaigba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ajaokuta ")),
                        TableCell(child: Text("Geregu, Ero,Takumena")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Obajana,Akpata,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Osara, ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ankpa")),
                        TableCell(child: Text("Oliya, Ofugu-Inye")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Abakpa, Okenyi, Ogori, Boju")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ankpa,Kogi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dekina")),
                        TableCell(child: Text("Elubi, Iyale, Itama")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Elubi, Ola")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ola, Ikebe")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ofu ")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ofu,Kogi")),
                        TableCell(
                            child: Text("Umomi, Ejule, Ofafu, Abedamegu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ABIA")),
                        TableCell(child: Text("Obi-Ngwa South ")),
                        TableCell(child: Text("Obi Ngwa South Abia")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Isiukwuato ")),
                        TableCell(
                            child: Text("Lekwesi, obinago, afikpo, ishiagu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Umuahia South ")),
                        TableCell(
                            child:
                                Text("Abia,Itaja,Umuosu,Ama Apu,Umuomayi Uku")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Isiala-Ngwa South ")),
                        TableCell(child: Text("Umuezegu, Mbawsi, Umuosu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Isiala-Ngwa South, Abia")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ukwa East")),
                        TableCell(child: Text("Ugunwagbo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Arochukwu")),
                        TableCell(
                            child: Text("Eziama, Amakofia, Amuvi, Ututu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Umuahia North")),
                        TableCell(child: Text("Umuire, Umuahia, Amuzukwu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ikwuano")),
                        TableCell(child: Text("Ogbuebule, Mbinyang, Ekebedi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("AKWA IBOM")),
                        TableCell(child: Text("Ini")),
                        TableCell(
                            child: Text("Ini, Ebem Obom, Ogu, Ikot Etim")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ini 2")),
                        TableCell(child: Text("Ogu, Ntalakwu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ikot Ekpene")),
                        TableCell(
                            child:
                                Text("Utu Ikot Ekpenyong, Ibiaku Ntok Okpo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Obot-Akare")),
                        TableCell(child: Text("Nto Ndan, Uduk Usung")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("CROSS RIVER")),
                        TableCell(child: Text("Ikom")),
                        TableCell(child: Text("Ikom, Etomi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Obubra")),
                        TableCell(
                            child: Text("Onyadama, Apiapum, Ohana, Esabang")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Okpetumo, Ogurude, Oyina")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Yakurr")),
                        TableCell(child: Text("Yakur, Cross River")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Akpabuyo")),
                        TableCell(child: Text("Esuokon, Ekpene Esuk")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OYO ")),
                        TableCell(child: Text("Atisbo")),
                        TableCell(child: Text("Agunrege, Atisbo, Ago Are")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Iseyin")),
                        TableCell(child: Text("Mosafejo, Temidire Ekeje")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text("Ekeje,Ayantade,Temidire,Ogungbe")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text(
                                "Ado-Awaiye, Ekeje, Isemi, Adekidero, Apata,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ANAMBRA")),
                        TableCell(child: Text("Ayamelum")),
                        TableCell(child: Text("Omor, Anaku")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Anambra West")),
                        TableCell(
                            child: Text("Nmiata, Anam City, Nsugbe, Allah")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Orania-Otu, Nzam")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Anambra East ")),
                        TableCell(
                            child:
                                Text("Igbariam;Isinyi Namdo; Achalla; Akenu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("EBONYI ")),
                        TableCell(child: Text("Onicha")),
                        TableCell(
                            child: Text(
                                "Okposi, Onicha, Agbado, Isu, Obina, Ndiagu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text("Ohofia Agba, Agba, Ndiagu, Egbeagu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Agbado, Oshiri")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ivo")),
                        TableCell(
                            child: Text("Obinago, Afikpo, Aka Eze, Ugweke")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ivo")),
                        TableCell(
                            child: Text("Obinago, Afikpo, Aka Eze, Ugweke")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("DELTA")),
                        TableCell(child: Text("Ethiope west")),
                        TableCell(child: Text("Upekeli, Idjerke Kingdom")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Aniocha north")),
                        TableCell(child: Text("Ezi, Issele-Uku")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Oshimili north")),
                        TableCell(child: Text("Ubulu Okiti, Onicha olona")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ika N/E")),
                        TableCell(
                            child: Text("Aleru,Umunede,Ete Erumu,Ika South")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("EKITI ")),
                        TableCell(child: Text("Ikole")),
                        TableCell(child: Text("Oke ayedun, Itapa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Emure")),
                        TableCell(child: Text("Ise, Agbado")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ONDO")),
                        TableCell(child: Text("Owo ")),
                        TableCell(child: Text("Emure Ile,Oka,Ipeme")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ipeme, Idosale")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text("Emure Ile,Ipele,Ugbolan,Ijegunmo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("RIVERS")),
                        TableCell(child: Text("Oyigbo")),
                        TableCell(child: Text("Oyigbo, Ogoni")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NASARAWA")),
                        TableCell(child: Text(" Nasarawa,Doma")),
                        TableCell(child: Text(" Toto, Eggon, Doma, Adogi,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Wamba ")),
                        TableCell(child: Text("Arum, Jimmiyya,Gitta")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OSUN")),
                        TableCell(child: Text("Ile Ogbo")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Osogbo")),
                        TableCell(child: Text("Iwo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KWARA")),
                        TableCell(child: Text("Southern LGAs")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("TARABA")),
                        TableCell(child: Text("Southern LGAs")),
                        TableCell(child: Text(" ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OGUN")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                      ]),
                    ],
                  ))
            ]))));
  }
}
