import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:rizzi/interface/painelag1.dart';
import 'package:rizzi/interface/prog1.dart';
import 'my_selection_item.dart';
import 'package:direct_select/direct_select.dart';

/// Provides a UI to select a authentication type page
class Ag1 extends StatefulWidget {
  _Ag1 createState() => _Ag1();
}

final elements1 = ["", "08:00", "10:00", "15:00", "16:30"];
final elements2 = ["", "AG", "AA", "P", "E", "SEA", "SER", "SI"];
final elements3 = [
  "",
  "Tipo serv01",
  "Tipo serv02",
  "Tipo serv03",
  "Tipo serv04"
];
final elements4 = ["", "10:30", "14:30", "15:30", "16:00"];
final elements5 = ["", "Status1", "Status1", "Status1", "Status1"];
final elements6 = ["", "ok", "faltante"];
final elements7 = ["", "ok", "faltante"];
final elements8 = [
  "",
  "CLIENTE NO HORÁRIO",
  "ATRASO ACIMA DE 15 MIN",
  "NÃO COMPARECEU"
];
final elements9 = [
  "",
  "OK",
  "ATRASO DO CLIENTE",
  "ATRASO DA OFICINA",
  "ATRASO CONSULTOR"
];

int selectedIndex1 = 0;
int selectedIndex2 = 0;
int selectedIndex3 = 0;
int selectedIndex4 = 0;
int selectedIndex5 = 0;
int selectedIndex6 = 0;
int selectedIndex7 = 0;
int selectedIndex8 = 0;
int selectedIndex9 = 0;

List<Widget> _buildItems1() {
  return elements1
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems2() {
  return elements2
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems3() {
  return elements3
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems4() {
  return elements4
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems5() {
  return elements5
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems6() {
  return elements6
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems7() {
  return elements7
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems8() {
  return elements8
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

List<Widget> _buildItems9() {
  return elements9
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

class _Ag1 extends State<Ag1> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();
  TextEditingController tc4 = TextEditingController();
  TextEditingController tc5 = TextEditingController();
  TextEditingController tc6 = TextEditingController();
  TextEditingController tc7 = TextEditingController();
  TextEditingController tc8 = TextEditingController();
  TextEditingController tc9 = TextEditingController();
  TextEditingController tc10 = TextEditingController();
  TextEditingController tc11 = TextEditingController();
  TextEditingController tc12 = TextEditingController();
  TextEditingController tc13 = TextEditingController();
  TextEditingController tc14 = TextEditingController();
  TextEditingController tc15 = TextEditingController();
  TextEditingController tc16 = TextEditingController();
  TextEditingController tc17 = TextEditingController();
  TextEditingController tc18 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Agendamento',
          textAlign: TextAlign.center,
        )),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 30,
                  width: 10,
                  child: Text(
                    'Agendar',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white70,
                  height: 30,
                  width: 10,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  DATA:'),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70)),
                        alignment: Alignment.center,
                        height: 30,
                        width: 10,
                        child: TextButton(
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2020, 3, 5),
                                  maxTime: DateTime(2025, 6, 7),
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.pt, onConfirm: (date) {
                                setState(() {
                                  dateForm = date;
                                });
                              });
                            },
                            child:
                                Text(DateFormat('dd-MM-yy').format(dateForm)))),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  HORÁRIO:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex1,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements1[selectedIndex1],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex1 = index!;
                            });
                          },
                          items: _buildItems1()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  TP:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex2,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements2[selectedIndex2],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex2 = index!;
                            });
                          },
                          items: _buildItems2()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  CLIENTE:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  PLACA:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc2,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  MODELO/VEIC:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc3,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  TIPO/SERVIÇO:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex3,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements3[selectedIndex3],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex3 = index!;
                            });
                          },
                          items: _buildItems3()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  CONSULTOR:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc4,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  PREV/ENTREGA:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex4,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements4[selectedIndex4],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex4 = index!;
                            });
                          },
                          items: _buildItems4()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  STATUS:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex5,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements5[selectedIndex5],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex5 = index!;
                            });
                          },
                          items: _buildItems5()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white70)),
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                  child: FittedBox(
                    child: Text(
                      'CONTROLE INTERNO (CHEGADA/SAÍDA DO CLIENTE/DOCUMENTAÇÃO)',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Text('  CHECK/LIST:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex6,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements6[selectedIndex6],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex6 = index!;
                            });
                          },
                          items: _buildItems6()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  ORÇ:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex7,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements7[selectedIndex7],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex7 = index!;
                            });
                          },
                          items: _buildItems7()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  ENTRADA/PRAZO:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex8,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements8[selectedIndex8],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex8 = index!;
                            });
                          },
                          items: _buildItems8()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  ENTREGA/PRAZO:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 5,
                      child: DirectSelect(
                          itemExtent: 55.0,
                          selectedIndex: selectedIndex9,
                          child: MySelectionItem(
                            isForList: false,
                            title: elements9[selectedIndex9],
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedIndex9 = index!;
                            });
                          },
                          items: _buildItems9()),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white70,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text(
                              'AGENDADO',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text(
                              'ATIVO',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text(
                              'PASSANTE',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text('ENTREGA', textAlign: TextAlign.center),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text('Expresso Ativo',
                                textAlign: TextAlign.center),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                              child: Text('Expresso Receptivo',
                                  textAlign: TextAlign.center)),
                        )),
                  ),
                  Expanded(
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                          child: FittedBox(
                              child: Text(
                        'Serviço Interno',
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.blue,
                  child: Text(
                    "AG",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.purple,
                  child: Text(
                    "AA",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.yellow,
                  child: Text(
                    "P",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.green,
                  child: Text(
                    "E",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.black,
                  child: Text(
                    "SEA",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.black,
                  child: Text(
                    "SER",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.grey,
                  child: Text(
                    "SI",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed:
                              () {}, // falta direcionar para databases enviar
                          child: Text('Enviar')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PainelAg1()));
                          }, // falta direcionar para databases editar
                          child: Text('TV')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Prog1()));
                          },
                          child: Text('Programar')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
