import 'package:flutter/material.dart';

//land pereperation
class oilpalm extends StatefulWidget {
  @override
  _oilpalm createState() => _oilpalm();
}

class _oilpalm extends State<oilpalm> {
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
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yobe')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Borno')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gombe')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kaduna')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sokoto')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Zamfara')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jigawa')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kebbi')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Katsina')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Niger')),
                  DataCell(Text('1st May')),
                  DataCell(Text('30th May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('FCT')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kogi')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benue')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kwara')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Plateau')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bauchi')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Lagos')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ogun')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ondo')),
                  DataCell(Text('21st February')),
                  DataCell(Text('30th March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st January')),
                  DataCell(Text('1st March')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('N/A')),
                  DataCell(Text('N/A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Enugu')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Anambra')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Imo')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Abia')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Taraba')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Nassarawa')),
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('23st-26th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Kano')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//planting
class oilpalm2 extends StatefulWidget {
  @override
  _oilpalm2 createState() => _oilpalm2();
}

class _oilpalm2 extends State<oilpalm2> {
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
                  DataCell(Text('4th April')),
                  DataCell(Text('29th April')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Akwa Ibom')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Delta')),
                  DataCell(Text('NA')),
                  DataCell(Text('NA')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('1st May')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('2nd week of February')),
                  DataCell(Text('1st week of March')),
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
              ],
            ),
          ])),
        ));
  }
}

class oilpalm8 extends StatefulWidget {
  @override
  _oilpalm8 createState() => _oilpalm8();
}

class _oilpalm8 extends State<oilpalm8> {
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
                  DataCell(Text('April')),
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
                  DataCell(Text('######')),
                  DataCell(Text('30th July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('N/A')),
                  DataCell(Text('N/A')),
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
                  DataCell(Text('1st-5th May')),
                  DataCell(Text('24th-31st July')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//weeding
class oilpalm3 extends StatefulWidget {
  @override
  _oilpalm3 createState() => _oilpalm3();
}

class _oilpalm3 extends State<oilpalm3> {
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
                  DataCell(Text('15th August')),
                  DataCell(Text('3rd October')),
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
                  DataCell(Text('1st April')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Edo')),
                  DataCell(Text('######')),
                  DataCell(Text('2nd July')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of April')),
                  DataCell(Text('4th week of April')),
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
                  DataCell(Text('A year after planting')),
                  DataCell(Text(' ')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//post emergence
class oilpalm4 extends StatefulWidget {
  @override
  _oilpalm4 createState() => _oilpalm4();
}

class _oilpalm4 extends State<oilpalm4> {
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
                  DataCell(Text('######')),
                  DataCell(Text('31st Dec')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of May')),
                  DataCell(Text('4st week of May')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ebonyi')),
                  DataCell(Text('February')),
                  DataCell(Text('May')),
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
                  DataCell(Text('After 6 weeks of planting')),
                  DataCell(Text(' ')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//2nd fertilizer
class oilpalm5 extends StatefulWidget {
  @override
  _oilpalm5 createState() => _oilpalm5();
}

class _oilpalm5 extends State<oilpalm5> {
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
                  DataCell(Text('7th August')),
                  DataCell(Text('28th September')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
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
                  DataCell(Text('10th July')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('2nd week of May')),
                  DataCell(Text('4th week of May')),
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
                  DataCell(Text('After 6 weeks planting')),
                  DataCell(Text(' ')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//harvesting
class oilpalm6 extends StatefulWidget {
  @override
  _oilpalm6 createState() => _oilpalm6();
}

class _oilpalm6 extends State<oilpalm6> {
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
                      '2nd Fertilizer Application',
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
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
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
                  DataCell(Text('######')),
                  DataCell(Text('######')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('N/A')),
                  DataCell(Text('N/A')),
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
                  DataCell(Text('2nd-7th April')),
                  DataCell(Text('21st-25th April')),
                ]),
              ],
            ),
          ])),
        ));
  }
}

//
class oilpalm7 extends StatefulWidget {
  @override
  _oilpalm7 createState() => _oilpalm7();
}

class _oilpalm7 extends State<oilpalm7> {
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
                  DataCell(Text('30th October')),
                  DataCell(Text('2nd December')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ekiti')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
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
                  DataCell(Text('1st April')),
                  DataCell(Text('N/A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rivers')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cross Rivers')),
                  DataCell(Text('1st week of May')),
                  DataCell(Text('1st week of July')),
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
                  DataCell(Text('After 3 years')),
                  DataCell(Text(' ')),
                ]),
              ],
            ),
          ])),
        ));
  }
}
