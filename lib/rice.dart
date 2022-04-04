import 'package:flutter/material.dart';

class rice extends StatefulWidget {
  @override
  _rice createState() => _rice();
}

// Rice

class _rice extends State<rice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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

//planting
class MyApp2 extends StatefulWidget {
  @override
  _DataTableExample2 createState() => _DataTableExample2();
}

class _DataTableExample2 extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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
                  DataCell(Text('21st May')),
                  DataCell(Text('20th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('29th April')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('17th June')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('7th May')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('11th June')),
                  DataCell(Text('18th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st May')),
                  DataCell(Text('15th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('15th May')),
                  DataCell(Text('15th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('May')),
                  DataCell(Text('June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('20th July')),
                  DataCell(Text('30th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('15th May')),
                  DataCell(Text('15th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st May')),
                  DataCell(Text('15th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('7th June')),
                  DataCell(Text('21st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('22nd June')),
                  DataCell(Text('30th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('26th April')),
                  DataCell(Text('9th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('1st June')),
                  DataCell(Text('22nd June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('18th March')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('1st June')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Early April')),
                  DataCell(Text('April Ending')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('28th Jan')),
                  DataCell(Text('16th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('25th January')),
                  DataCell(Text('27th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('22nd January')),
                  DataCell(Text('27th February')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Osun')),
                  DataCell(Text('3rd March')),
                  DataCell(Text('15th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('4th April')),
                  DataCell(Text('27th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('14th February')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st June')),
                  DataCell(Text('31st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('2nd week of April')),
                  DataCell(Text('4th week of April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('May')),
                  DataCell(Text('June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th April')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th May')),
                  DataCell(Text('19th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('25th May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('20th May')),
                  DataCell(Text('9th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('1st-7th May')),
                  DataCell(Text('2nd-6th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('NIL')),
                  DataCell(Text('NIL')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

class rice8 extends StatefulWidget {
  @override
  _rice8 createState() => _rice8();
}

class _rice8 extends State<rice8> {
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
                  DataCell(Text('10th May')),
                  DataCell(Text('15th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('20th June')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('7th May')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('25th May')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('19th June')),
                  DataCell(Text('26th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st May')),
                  DataCell(Text('17th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('15th June')),
                  DataCell(Text('1st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('May')),
                  DataCell(Text('June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('7th August')),
                  DataCell(Text('30th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('15th April')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st May')),
                  DataCell(Text('17th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st June')),
                  DataCell(Text('17th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('9th April')),
                  DataCell(Text('9th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('22nd June')),
                  DataCell(Text('1st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('19th March')),
                  DataCell(Text('3rd April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('15 April')),
                  DataCell(Text('15 May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('4 days after harrowing')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('25th April')),
                  DataCell(Text('29th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('10th March')),
                  DataCell(Text('22nd May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('2nd July')),
                  DataCell(Text('6th July ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('3rd June')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th April')),
                  DataCell(Text('19th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('2nd week of May')),
                  DataCell(Text('1st week of June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('May')),
                  DataCell(Text('July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th May')),
                  DataCell(Text('19th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th April')),
                  DataCell(Text('19th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('22nd April')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('1st-6th May')),
                  DataCell(Text('2nd-5th August')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//first fertilizer application
class MyApp3 extends StatefulWidget {
  @override
  _DataTableExample3 createState() => _DataTableExample3();
}

// Rice

class _DataTableExample3 extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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
                  DataCell(Text('12th June')),
                  DataCell(Text('12th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('1st July')),
                  DataCell(Text('14th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('14th July')),
                  DataCell(Text('21st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('4th June')),
                  DataCell(Text('10th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('27th June')),
                  DataCell(Text('30th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('2nd May')),
                  DataCell(Text('17th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st July')),
                  DataCell(Text('14th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('June')),
                  DataCell(Text('July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('30th August')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('15th April')),
                  DataCell(Text('30th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('2nd May')),
                  DataCell(Text('13th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('14th June')),
                  DataCell(Text('21st June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('22nd June')),
                  DataCell(Text('30th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('5th April')),
                  DataCell(Text('26th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('28th June')),
                  DataCell(Text('20th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('8th April')),
                  DataCell(Text('14th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('23rd June')),
                  DataCell(Text('7th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('April Ending')),
                  DataCell(Text('Early May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('15th March')),
                  DataCell(Text('29th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('28th February')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('10th March')),
                  DataCell(Text('22nd May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('16th July')),
                  DataCell(Text('24th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('20th April')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('15th June')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th March')),
                  DataCell(Text('19th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('2nd week of June')),
                  DataCell(Text('3rd week of June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('May')),
                  DataCell(Text('May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('17th February')),
                  DataCell(Text('31st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th April')),
                  DataCell(Text('19th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th May')),
                  DataCell(Text('19th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('10th July')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('13th June')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('25th-31st May')),
                  DataCell(Text('26th-30th August')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//weeding
class MyApp4 extends StatefulWidget {
  @override
  _DataTableExample4 createState() => _DataTableExample4();
}

// Rice

class _DataTableExample4 extends State<MyApp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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
                  DataCell(Text('2nd July')),
                  DataCell(Text('31st August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('24th June')),
                  DataCell(Text('7th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('5th August')),
                  DataCell(Text('12th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('15th June')),
                  DataCell(Text('25th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('5th July')),
                  DataCell(Text('13th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st June')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('14th July')),
                  DataCell(Text('1st August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('July')),
                  DataCell(Text('August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('1st October')),
                  DataCell(Text('15th October')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('30th June')),
                  DataCell(Text('7th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st June')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('21st July ')),
                  DataCell(Text('28th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th September')),
                  DataCell(Text('22nd September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('9th April')),
                  DataCell(Text('9th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('23rd August')),
                  DataCell(Text('21st September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('NA')),
                  DataCell(Text('NA')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('22nd August')),
                  DataCell(Text('21st September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('8 days after transplanting')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('21st April')),
                  DataCell(Text('28th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('4th April')),
                  DataCell(Text('8th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('26th July')),
                  DataCell(Text('30th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st July')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('Mid May')),
                  DataCell(Text('Mid July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('13th April')),
                  DataCell(Text('13th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('1st September')),
                  DataCell(Text('20th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('18th-21st May')),
                  DataCell(Text('15th-20th August')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//post emergence
class MyApp5 extends StatefulWidget {
  @override
  _DataTableExample5 createState() => _DataTableExample5();
}

// Rice

class _DataTableExample5 extends State<MyApp5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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
                  DataCell(Text('30th July')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('20th July')),
                  DataCell(Text('31st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('19th August')),
                  DataCell(Text('26th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('10th June')),
                  DataCell(Text('15th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('14th July')),
                  DataCell(Text('21st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st June')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('1st August')),
                  DataCell(Text('7th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('July')),
                  DataCell(Text('August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('15th August')),
                  DataCell(Text('30th October')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('15th July')),
                  DataCell(Text('30th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st June')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('7th July')),
                  DataCell(Text('14th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('15th August')),
                  DataCell(Text('30th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('11th June')),
                  DataCell(Text('25th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('23th August')),
                  DataCell(Text('21th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('15th April')),
                  DataCell(Text('21st April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('1st September')),
                  DataCell(Text('30th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Ending of June')),
                  DataCell(Text('Early June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('6th April')),
                  DataCell(Text('15th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('2nd August')),
                  DataCell(Text('13th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('22nd June')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('Mid May')),
                  DataCell(Text('Mid July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('1st September')),
                  DataCell(Text('20th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('######')),
                  DataCell(Text('28th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('16th-19th May')),
                  DataCell(Text('16th-20th August')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//2nd fertilizer
class MyApp6 extends StatefulWidget {
  @override
  _DataTableExample6 createState() => _DataTableExample6();
}

// Rice

class _DataTableExample6 extends State<MyApp6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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
                  DataCell(Text('30th July')),
                  DataCell(Text('15th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('9th September')),
                  DataCell(Text('23rd September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('10th September')),
                  DataCell(Text('15th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('30th June')),
                  DataCell(Text('10th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('22nd July')),
                  DataCell(Text('3rd August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('1st June')),
                  DataCell(Text('1st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('7th August')),
                  DataCell(Text('28th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('August')),
                  DataCell(Text('August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('30th October')),
                  DataCell(Text('15th October')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('30th August')),
                  DataCell(Text('15th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('1st June')),
                  DataCell(Text('1st July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('30th July')),
                  DataCell(Text('7th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('22nd September')),
                  DataCell(Text('29th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('10th May')),
                  DataCell(Text('31st May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('6th September')),
                  DataCell(Text('27th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('13th May')),
                  DataCell(Text('19th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('1st September')),
                  DataCell(Text('31st September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('Mid May')),
                  DataCell(Text('Early June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('15th March')),
                  DataCell(Text('29th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('19th June')),
                  DataCell(Text('3rd August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('5th June')),
                  DataCell(Text('20th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('17th August')),
                  DataCell(Text('28th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('19th May')),
                  DataCell(Text('19th June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('July')),
                  DataCell(Text('July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('1st May')),
                  DataCell(Text('1st June')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('19th June')),
                  DataCell(Text('19th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('N/A')),
                  DataCell(Text('N/A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('######')),
                  DataCell(Text('27th August')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('12th-15th August')),
                  DataCell(Text('14th-17th September')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//harvesting
class MyApp7 extends StatefulWidget {
  @override
  _DataTableExample7 createState() => _DataTableExample7();
}

// Rice

class _DataTableExample7 extends State<MyApp7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Rice'),
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
                  DataCell(Text('  ')),
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

class MyApp8 extends StatefulWidget {
  @override
  _DataTableExample8 createState() => _DataTableExample8();
}

// Rice

class _DataTableExample8 extends State<MyApp8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
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
                  DataCell(Text('fadimatu umar bakari ')),
                  DataCell(Text('september')),
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
