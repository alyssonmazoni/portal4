import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class cl1oapconta extends StatefulWidget {
  _cl1oapconta createState() => _cl1oapconta();
}

class _cl1oapconta extends State<cl1oapconta> {
  DateTime dateForm = DateTime.now();

  final elements1 = [
    "",
    "Sim",
    "Não",
  ];

  final elements2 = [
    "",
    "Sim",
    "Não",
  ];

  final elements3 = [
    "",
    "Sim",
    "Não",
  ];

  final elements4 = [
    "",
    "Sim",
    "Não",
  ];

  final elements5 = [
    "",
    "Sim",
    "Não",
  ];

  int selectedIndex1 = 0;
  int selectedIndex2 = 0;
  int selectedIndex3 = 0;
  int selectedIndex4 = 0;
  int selectedIndex5 = 0;

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

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();
  TextEditingController tc4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(' Check-List de Verificação da Autoimplantação - OAP')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text('Data'),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
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
                              child: Text(
                                  DateFormat('dd-MM-yyyy').format(dateForm)))),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text('Conta'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 30,
                        width: 5,
                        child: TextField(
                            controller: tc1,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center),
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text('Concessão'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 30,
                        width: 5,
                        child: TextField(
                            controller: tc2,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center),
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                                  color: Colors.white, // Set border color
                                  width: 3.0), // Set border width
                              borderRadius: BorderRadius.all(Radius.circular(
                                  10.0)), // Set rounded corner radius
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(1, 3))
                              ] // Make rounded corner of border
                          ),
                          child: Text('Recursos'),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blueGrey,
                    height: 3,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    padding: EdgeInsets.all(10),
                    child: Text('Sub Etapa'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text('Light'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    padding: EdgeInsets.all(10),
                    child: Text('Nº'),
                  ),
                ),

                Expanded(
                  child: Container(

                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text('Questão'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text('Resposta'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text('Peso'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blueGrey,
                    height: 3,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text(
                          'Ele.01 - Cumprir todos os padrões determinados pelo StarClass no departamento de serviço'),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
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
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              border: Border.all(
                                  color: Colors.grey, // Set border color
                                  width: 3.0), // Set border width
                              borderRadius: BorderRadius.all(Radius.circular(
                                  10.0)), // Set rounded corner radius
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(1, 3))
                              ] // Make rounded corner of border
                          ),
                          child: Text(
                              "Possuir as seguintes funções no concessionário: (Um funcionário poderá exercer uma ou mais função, desde que não prejudique as etapas dos processos.)"),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('Ele.02.a - Gerente de serviço'),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
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
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blueGrey,
                    height: 3,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('Ele.02.b - Consultor de serviço'),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: DirectSelect(
                            itemExtent: 55.0,
                            selectedIndex: selectedIndex1,
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
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
        ));
  }
}
