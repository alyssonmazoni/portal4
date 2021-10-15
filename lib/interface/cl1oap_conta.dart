import 'package:flutter/material.dart';
import 'package:rizzi/interface/headerChekList.dart';
import 'my_selection_item.dart';
import 'rowCheckList.dart';
import 'headerChekList.dart';

/// Provides a UI to select a authentication type page
class cl1oapconta extends StatefulWidget {
  _cl1oapconta createState() => _cl1oapconta();
}

class _cl1oapconta extends State<cl1oapconta> {
  DateTime dateForm = DateTime.now();

  final elements1 = [
    "",
    "S",
    "N",
  ];

  final elements2 = [
    "",
    "S",
    "N",
  ];

  final elements3 = [
    "",
    "S",
    "N",
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
          height: double.infinity,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: SingleChildScrollView(
            child: Column(children: [
              HeaderCheckList(),
              Row(
                  children: [
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
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
                    height: 30,
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
                    child: Text('S.Etapa'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Text('Questão'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Text('Resp'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Text('Peso'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Padding(
                padding: EdgeInsets.all(10),
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
              RowCheckList(select: 0,),
              Row(
                  children: [
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
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
              RowCheckList(select: 1,),
              RowCheckList(select: 2,)
            ], mainAxisAlignment: MainAxisAlignment.center),
          ),
        ));
  }
}
