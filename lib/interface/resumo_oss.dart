import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/pos_venda.dart';
import 'package:rizzi/interface/resumo_pecas.dart';
import 'package:rizzi/interface/tela_menu.dart';
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
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all (10),
          decoration: BoxDecoration(
            border: Border.all (color: Colors.red)
          ),
          child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 20,
                  child: Text('Resumo OSs'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Será uma Query do ID da conta '),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceAround),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green[500],
                  height: 35,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceAround),
            Row(
                children: [
                  Expanded(
                    child: Text('Data'),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 4,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Pedido'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(controller: tc1),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Classe'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
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
                    child: Text('SB'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
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
                    child: Text('Tipo'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
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
                    child: Text('Solicitada'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(controller: tc2),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Disponível'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(controller: tc3),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('S/A'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
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
                    child: Text('TP Solicitação'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
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
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {}, // falta direcionar para tela xpto
                          child: Text('Salvar')),
                    ),
                  ),


                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ResumoPecas()));},
                          child: Text('Resumo Peças')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => posvenda()));},
                          child: Text('Voltar')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
