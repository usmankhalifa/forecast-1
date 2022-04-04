import 'package:flutter/material.dart';

//land preperation
class cocoa extends StatefulWidget {
  @override
  _cocoa createState() => _cocoa();
}

class _cocoa extends State<cocoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Land Preparation',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('26th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('15th January')),
                  DataCell(Text('20th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Osun')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st January')),
                  DataCell(Text('1st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('4th week of January')),
                  DataCell(Text('4th week of March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//planting
class cocoa2 extends StatefulWidget {
  @override
  _cocoa2 createState() => _cocoa2();
}

class _cocoa2 extends State<cocoa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Planting',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

class cocoa8 extends StatefulWidget {
  @override
  _cocoa8 createState() => _cocoa8();
}

class _cocoa8 extends State<cocoa8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Maize'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Pre Emergence',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//first ferilizer application
class cocoa3 extends StatefulWidget {
  @override
  _cocoa3 createState() => _cocoa3();
}

class _cocoa3 extends State<cocoa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'First Fertilizer Application',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//weeding
class cocoa4 extends StatefulWidget {
  @override
  _cocoa4 createState() => _cocoa4();
}

class _cocoa4 extends State<cocoa4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Weeding',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//post emergence
class cocoa5 extends StatefulWidget {
  @override
  _cocoa5 createState() => _cocoa5();
}

class _cocoa5 extends State<cocoa5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Post Emergence',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//2nd fertilizer
class cocoa6 extends StatefulWidget {
  @override
  _cocoa6 createState() => _cocoa6();
}

class _cocoa6 extends State<cocoa6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '2nd Fertilizer',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//harvesting
class cocoa7 extends StatefulWidget {
  @override
  _cocoa7 createState() => _cocoa7();
}

class _cocoa7 extends State<cocoa7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cocoa'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Harvesting',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('STATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Range',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Adamawa')),
                  DataCell(Text('1st April')),
                  DataCell(Text('20th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('25th March')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('2nd June')),
                  DataCell(Text('10th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('March')),
                  DataCell(Text('April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st March')),
                  DataCell(Text('30 March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th March')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st May')),
                  DataCell(Text('25th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('25 February')),
                  DataCell(Text('17 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('20th April')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early March')),
                  DataCell(Text('Early April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('4th Jan')),
                  DataCell(Text('11th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('5th January')),
                  DataCell(Text('22nd February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' 24th February')),
                  DataCell(Text('4th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('14th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st February')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th Feb')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of March')),
                  DataCell(Text('1st week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('29th April')),
                  DataCell(Text('6th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('17th March')),
                  DataCell(Text('30th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}
