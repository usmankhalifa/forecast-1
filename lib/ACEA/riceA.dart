import 'package:flutter/material.dart';

class riceACEA extends StatefulWidget {
  @override
  _riceACEA createState() => _riceACEA();
}

class _riceACEA extends State<riceACEA> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Rice",
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
                    image: Image.asset("assets/riceA.jpg").image,
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
                        TableCell(child: Text("ADAMAWA")),
                        TableCell(child: Text("Numan")),
                        TableCell(
                            child: Text(
                                "Ngwalti, Ngbalapin, Dong,Nzuruwei, Ngbolung, Numan")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lamurde")),
                        TableCell(
                            child: Text(
                                "Lamurde, Ngederen, Wadaku, Kabawa, Chumun, Imburu, Kabawa, Giwano")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("BAUCHI")),
                        TableCell(child: Text("Warji")),
                        TableCell(
                            child:
                                Text("Badayeso, Ruwa Uku, Dutsen Kam, Warji")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Misau")),
                        TableCell(child: Text("Sade, Nahuta, Gagalun")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bauchi")),
                        TableCell(child: Text("Badagari, Yamrat, Gidanjo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Itas/Gadau")),
                        TableCell(child: Text("Gadau, Dahuwa, Ragom")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shira ")),
                        TableCell(child: Text("Disina, Yerimari, Shira ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ABIA")),
                        TableCell(child: Text("Isiukwuato")),
                        TableCell(
                            child: Text(
                                "Otampa, Amangwu, Ezeukwu, Eluama, Lekwesi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Arochukwu")),
                        TableCell(child: Text("Amankwu, Eziama, Ututu, Amuvi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("AKWA IBOM")),
                        TableCell(child: Text("Ini")),
                        TableCell(
                            child:
                                Text("Nkalu, Ikot Etim, Ntalakwu, Ebem Obom")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ANAMBRA")),
                        TableCell(child: Text("Awka North")),
                        TableCell(
                            child: Text(
                                "Achalla, Igbariam, Ebenebe, Amanuke, Urum, Mgakwu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ogbaru ")),
                        TableCell(child: Text("Ogbakuma, Umunankwo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ayamelum")),
                        TableCell(
                            child: Text(
                                "Anaku, Igbariam, Onoia, Omor, Umuabu, Umuelum, Okpatu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Anambra West")),
                        TableCell(
                            child: Text(
                                "Umudora Anam, Umueze Anam, Nmiata, Nzam")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("BENUE")),
                        TableCell(child: Text("Gwer")),
                        TableCell(
                            child: Text(
                                "Aliade, Adima, Aayonso Ndoor, Adoka, Lerkpen, Abenga, Agana, Ubi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Guma")),
                        TableCell(
                            child: Text(
                                "Agasha, Oku Lake, Aondo, Angula, Chiata")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Markurdi")),
                        TableCell(child: Text("Ande, Ihalav, Ihyev, Kopii, ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Vande-Ikya")),
                        TableCell(child: Text("Ihugh, Mbara")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Buruku ")),
                        TableCell(child: Text("Ugba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Agatu")),
                        TableCell(child: Text("Ikobi, Okokolo, Akoro")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Otukpo ")),
                        TableCell(
                            child:
                                Text("Ochobo, Aigaji, Ljami, Idekpa-Okpiko")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("BORNO")),
                        TableCell(child: Text("Biu")),
                        TableCell(
                            child: Text(
                                "Biu, Tila Lake, Dawoma, Sakwa, Barawe, Kirkidum")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Marte")),
                        TableCell(child: Text("Missene, Marte, Kumbulewari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ngala")),
                        TableCell(
                            child: Text("Wurge, Missini, Ngala, Gambaru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shani ")),
                        TableCell(child: Text("Shani, Gundu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Hawul ")),
                        TableCell(child: Text("Bangdi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("CROSS RVER")),
                        TableCell(child: Text("Abi")),
                        TableCell(child: Text("Usumutong, Ediba, Ugep, Imina")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Yala")),
                        TableCell(child: Text("Abatchor,Itelepa, Udenyuma")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Nfom1")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Iduku, Abatchor, Egbokoriko,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ogoja ")),
                        TableCell(child: Text("Afrike, Ogboje")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("DELTA")),
                        TableCell(child: Text("Oshimili North")),
                        TableCell(
                            child: Text(
                                "Illah, Ezi, Onicha Olona, Oroma Etiti, Ebu, Ukala Okwute, Ugbo Obi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("EBONYI")),
                        TableCell(child: Text("Afikpo")),
                        TableCell(
                            child: Text(
                                "Afikpo Ehugbo,Amoncha, Unwana, Okpo Ezi, Amoso, Ufueseni")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Abakaliki")),
                        TableCell(
                            child: Text(
                                "Ezzagu, Ofe Iyiokwu, Azuiyi Udene, Ohagulode")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Izzi ")),
                        TableCell(
                            child: Text(
                                "Iboko, Ndidulofia, Ndinwovukarivu, Edenyaka, ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ishielu")),
                        TableCell(
                            child: Text(
                                "Ezzo Abia, Ishieke, Ezamgbo, Ohofia Agba, Agba,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text(
                                "Nkalagu, Amokwo Okposieshi, Ezillo, Okpoto, Ntezi ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text("Ezillo, Okpoto, Ntezi, Ohofia Agba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("EDO")),
                        TableCell(child: Text("Esan South-East")),
                        TableCell(
                            child: Text(
                                "Udakpa, Ubiaja, Ugboha, Emu, Eko Oboye, Eguroe")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("EKITI")),
                        TableCell(child: Text("Ilejemeje")),
                        TableCell(child: Text("Iye, Ewu, Aiyede, Iludun")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Oye ")),
                        TableCell(child: Text("Itapaji")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ikole ")),
                        TableCell(child: Text("Itapaji")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Moba Otun")),
                        TableCell(child: Text("Otun Ekiti, Igodo Ekiti")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gbonyin ")),
                        TableCell(child: Text("Egbe")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ENUGU")),
                        TableCell(child: Text("Nkanu East")),
                        TableCell(child: Text("Amagunze, Agbani, Nara, Ozu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Isi-Uzo")),
                        TableCell(
                            child: Text(
                                "Ikem, Aguamede, Omanze, Ikem Nkwor, Ogo Ndago")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Aguamede, Umualo, Ikem")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("GOMBE")),
                        TableCell(child: Text("Nafada")),
                        TableCell(
                            child: Text(
                                "Dadin Kowa, Fusami, Garin Aba, Tudun Wada, Jigawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Yamaltu/Deba")),
                        TableCell(child: Text("Kurjelli, Jagale, Lano")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Akko")),
                        TableCell(
                            child: Text(
                                "Kumo, Nono, Shulo, Batungo, Garin Kagana")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kolmani Gaji Mari, Shulto")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("IMO")),
                        TableCell(child: Text("Ohaji/Egbemi")),
                        TableCell(
                            child: Text(
                                "Asa, Awarra, Opete, Ohoba, Umukani, Umuakpu,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text(
                                "Amafor, Obigwo, Okuku, Ndegwu, Amakohia Ubi, Obudi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("JIGAWA")),
                        TableCell(child: Text("Hadejia")),
                        TableCell(child: Text("Hadejia, Hago, Ruba")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Auyo")),
                        TableCell(child: Text("Auyo, Dakayawa, Arki")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Maitundu, Aima")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ringim")),
                        TableCell(child: Text("Ringim, Gerawa, Dabi, Dabige")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Birnin Kudu ")),
                        TableCell(
                            child: Text(
                                "Samamiya, Kila, Hambarawa, Wurnu, Kukuma")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Guri")),
                        TableCell(
                            child: Text(
                                "Guri, Bulama Haseini, Marma, Gogiya, Gabargal, Sugum, Kadera, Chachamnau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kazaure ")),
                        TableCell(child: Text("Gwiwa, Roni")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KANO")),
                        TableCell(child: Text("Rano")),
                        TableCell(child: Text("Rano, Seji, Kundun, Rurujm")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Garum Mallam")),
                        TableCell(
                            child: Text("Garum Mallam, Kadawa, Cirim, Wak")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kura ")),
                        TableCell(
                            child: Text("Kura, Sako, Dan Hassan, Kubarachi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bagwai")),
                        TableCell(
                            child: Text(
                                "Bagwai, Gogori, Gadanya, Romo, Kiyawa, Dumbulum")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dawaki Tofa")),
                        TableCell(
                            child: Text(
                                "Dawaki, Marke, Badume, Tatarawa, Tiko, Dawanau")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Minijibir")),
                        TableCell(
                            child: Text("Garke, Minijibir, Gurjiya, Gasgainu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Rogo ")),
                        TableCell(child: Text("Rogo ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Warawa")),
                        TableCell(child: Text("Warawa, Gogel")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KEBBI")),
                        TableCell(child: Text("Garko")),
                        TableCell(
                            child: Text(
                                "Garko, Garun Ali, Sumaila, Kafin Malamai, Kumfada")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Suru")),
                        TableCell(
                            child:
                                Text("Suru, Talata, Asarara, Kamba, Ruwafili")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Suru")),
                        TableCell(
                            child: Text("Kwawai, Giro, Aida, Ganye Gari")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Suru")),
                        TableCell(child: Text("Sugu, Raha, Sangelu, Suru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ngaski")),
                        TableCell(
                            child:
                                Text("Ganka, Machupa, Tungan Mogaji, Makawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ngaski")),
                        TableCell(
                            child: Text(
                                "Birnin Yauri, Shashi, Chumu, Kimu, Kolio")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Argungu")),
                        TableCell(
                            child: Text(
                                "Argungu, Bela, Garin Sabon Gandu, Zabamawa, Alawsha, Bande Sule, Gidan Sande, Dagere")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Yauri")),
                        TableCell(child: Text("Kunji, Kaure, Guru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Dandi ")),
                        TableCell(
                            child: Text("Shiko, Tungan Iname, Maigwaza,")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Birnin Kebbi ")),
                        TableCell(
                            child: Text(
                                "Zuguru, Wurogauri, Birnin Kebbi, Ungwan Sule")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KOGI")),
                        TableCell(child: Text("Idah")),
                        TableCell(
                            child: Text("Ogbogbo, Oforachi, Idah, Ajaka")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ibaji ")),
                        TableCell(child: Text("Odeke")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ibaji")),
                        TableCell(child: Text("Onyedega, Abujaga, Ogwo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("KWARA")),
                        TableCell(child: Text("Edu ")),
                        TableCell(
                            child: Text(
                                "Lafiagi, Funti, Kpefu, Gada Community, Lata Woro, Gagara, Kusodo, Lahagi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Edu")),
                        TableCell(
                            child: Text(
                                "Dubba,Wariku, Mashe, Guye Doko, Gamelegi, Emi Kimpa, Bichitagi, Gudusuru, Yawu, Cheko, Kpotunko")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Pategi")),
                        TableCell(child: Text("Pategi, Erufu, Ragada")),
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
                        TableCell(child: Text("Doma")),
                        TableCell(child: Text("Akerra, Egud, Atakwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Awe")),
                        TableCell(child: Text("Adiere, Awe")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lafia")),
                        TableCell(
                            child: Text(
                                "Gandu, Adogi, Agode, Giringwe, Akogi, Gidan Mai Akwiya")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("NIGER")),
                        TableCell(child: Text("Mokwa")),
                        TableCell(
                            child: Text(
                                "Shika, Lake Jeba, Bajibo, Akwan, Gungiborku")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Mokwa ")),
                        TableCell(
                            child: Text("Lake Ndakalowu, Kylema, Gana, Muwo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Agaie")),
                        TableCell(
                            child: Text(
                                "Agaie, Ekpagi, Ndadoko, Jikpmegi, Kanikuru, Ejiko, Esagi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Agaie")),
                        TableCell(
                            child:
                                Text("Agaie, Bulofa, Lafiagi, Shipo, Ekpagi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Bida")),
                        TableCell(
                            child: Text("Bida, Gbando, Batako,Egbati, Bororo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lapai")),
                        TableCell(child: Text("Gidi, Lafia Kpada, Gulu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Mashegu")),
                        TableCell(child: Text("Bambafu, Faku, Patiko")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shiroro")),
                        TableCell(
                            child: Text(
                                "Shiroro, Asha, Aguwi, Awasha, Ebbe, Dnakwala, Dnakwo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shiroro")),
                        TableCell(
                            child: Text("Gwada, Gidan Ganga, Guni, Gwadnami")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OGUN")),
                        TableCell(child: Text("Obafemi-Owode")),
                        TableCell(
                            child: Text(
                                "Iboro, Balogun Isaga, Kurere, Wasinmi, Igbin")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ewekoro")),
                        TableCell(
                            child: Text(
                                "Iboro, Balogun Isaga, Kurere, Wasinmi, Igbin")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Ewekoro")),
                        TableCell(
                            child: Text(
                                "Afowowa, Wasinmi, Aroge, Ajabata, Ogunmola Oke")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ONDO ")),
                        TableCell(child: Text("Irele")),
                        TableCell(
                            child:
                                Text("Salawa Odo, Igbeko Ote, Aduge, Igbotu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OYO")),
                        TableCell(child: Text("Irepo")),
                        TableCell(child: Text("Kishi, Ajetowa, Abule Soro, ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Iseyin")),
                        TableCell(
                            child: Text(
                                "Iseyin, Elegede, Asesu, Bale, Onibata, Odo-Ogun")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("OSUN")),
                        TableCell(child: Text("Aiyedire")),
                        TableCell(child: Text("Oro, Foke, ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Iwo")),
                        TableCell(child: Text("Oguro, Iwo, ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Olaoluwa ")),
                        TableCell(child: Text("Ife Odan, Ile Ogo, Motunini")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Olaoluwa")),
                        TableCell(child: Text("Kuta, Aba Oba, Onigbongbo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("PLATEAU")),
                        TableCell(child: Text("Shendam")),
                        TableCell(child: Text("Shendam, Kisa, Peshiep, Yelwa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shendam")),
                        TableCell(
                            child: Text("Lakushi Makat, Shemankar, Kalong")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Langtang South")),
                        TableCell(child: Text("Magam, Mabudi")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("RIVERS")),
                        TableCell(child: Text("Emuoha")),
                        TableCell(
                            child:
                                Text("Elele, Okpabo, Umudioga, Egbeda, Erema")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("SOKOTO")),
                        TableCell(child: Text("Goronyo")),
                        TableCell(
                            child: Text(
                                "Goronyo, Mallamawa, Gauro, Keta, Gidan Hashimu, Shinaka")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Rabah ")),
                        TableCell(child: Text("Rabah, Gandi, Tsamia, Rara ")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Wamako")),
                        TableCell(child: Text("Wamako, Sokoto")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shagari")),
                        TableCell(child: Text("Kajiji, Shagari, Askedodo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("TARABA")),
                        TableCell(child: Text("Gassol ")),
                        TableCell(
                            child: Text(
                                "Wurio, Yola Mbodewa, Golbembal, Deiba, Yola Kareje, Lake Njiddawo")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Arde-Kole")),
                        TableCell(
                            child: Text(
                                "Api, Adamu Kulu, Mallam Boyi, Garin Sarkin Fada")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Zing")),
                        TableCell(
                            child:
                                Text("Jauro Mani Nzebe, Bori Zinha, Monkin")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Lau")),
                        TableCell(
                            child: Text(
                                "Bandawa, Karim Lamido, Lau, Kwata Kanawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gassol ")),
                        TableCell(child: Text("Mutum biyu, Nabayi, Manji")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gassol ")),
                        TableCell(
                            child:
                                Text("Wurio, Garwa, Yola Kareje, Dadin kowa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Wukari ")),
                        TableCell(
                            child: Text("Bantaji, Gada Mayo, Anzwa, Kikundu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("YOBE")),
                        TableCell(child: Text("Nguru")),
                        TableCell(child: Text("Margadu,Arroro, Duduri")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Jakusko")),
                        TableCell(child: Text("Gashua, Nguru")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gulani ")),
                        TableCell(child: Text("Sangare, Jana, Gulnani")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Zara, Bornukice")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Gujba")),
                        TableCell(child: Text("Bolkolo, Jiri, Zugu")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Karasuwa ")),
                        TableCell(child: Text("Girimari, Doganna")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("ZAMFARA")),
                        TableCell(child: Text("Talata Mafara ")),
                        TableCell(
                            child: Text(
                                "Lake Natu, Talata Mafara, Makera, Gora, Rini")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Shinkafi")),
                        TableCell(
                            child: Text(
                                "Shinkafi, Tungan Gwragwu, Galadi, Jangero, Kursasa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text(" ")),
                        TableCell(
                            child: Text("Kagara Dauran, Magami, Modomawa")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Kauran Namoda")),
                        TableCell(
                            child: Text("Banga, Kauran Namoda, Barakeji")),
                      ]),
                      TableRow(children: [
                        TableCell(child: Text(" ")),
                        TableCell(child: Text("Maradun")),
                        TableCell(child: Text("Maradun, Makera")),
                      ]),
                    ],
                  ))
            ]))));
  }
}
