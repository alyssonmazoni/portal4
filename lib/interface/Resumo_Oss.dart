import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/Home.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class ResumoOss extends StatefulWidget {
  _ResumoOss createState() => _ResumoOss();
}

class _ResumoOss extends State<ResumoOss> {
  DateTime dateForm = DateTime.now();

  final elements1 = [
    "",
    "Balcão",
    "Oficina",
    "Funilaria",
    "Pneu",
  ];

  final elements2 = ["", "Orçamento", "Diagnóstico", "Ordem de reparação"];

  final elements3 = ["", "C&O", "Vans"];

  final elements4 = ["", "Sim", "Não"];

  final elements5 = ["", "Peça faltante", "Nova solicitação"];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Resumo de OS(s)')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: SingleChildScrollView(
              child: Column(children: [
            const Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Resumo de Ordens de Serviço',
                    style: TextStyle(fontSize: 10, color: Colors.black)),
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  Data:'),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70)),
                        height: 35,
                        width: 5,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  Pedido:'),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  Classe:'),
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
                    child: Text('  SB:'),
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
                    child: Text('  Tipo:'),
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
                    child: Text('  Solicitada:'),
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
                  Expanded(
                    child: Text('  Disponível:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
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
                    child: Text('  S/A:'),
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
                    child: Text('  TP Solicitação:'),
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
            Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 25,
                      width: 5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Menu1()));
                        },
                        child: Text('Voltar',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 25,
                      width: 5,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {}, // falta direcionar para tela xpto
                        child: Text('Salvar',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 25,
                      width: 5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Menu1()));
                        },
                        child: Text('Seguir',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 25,
                      width: 5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SystemHome()));
                        },
                        child: Text('Sair',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      child: FittedBox(
                        alignment: Alignment.bottomLeft,
                        fit: BoxFit.contain,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
