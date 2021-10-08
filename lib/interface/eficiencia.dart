import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/pos_venda.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'package:rizzi/interface/tela_menu.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class eficiencia extends StatefulWidget {
  _eficiencia createState() => _eficiencia();
}

class _eficiencia extends State<eficiencia> {
  DateTime dateForm = DateTime.now();

  final elements1 = [
    "",
    "A",
    "B",
    "C",
    "D",
  ];

  final elements2 = ["Orçamento", "Diagnóstico", "Ordem de reparação"];

  final elements3 = ["C&O", "Vans"];

  final elements4 = ["Sim", "Não"];

  final elements5 = ["Peça faltante", "Nova solicitação"];

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
  TextEditingController tc5 = TextEditingController();
  TextEditingController tc6 = TextEditingController();
  TextEditingController tc7 = TextEditingController();
  TextEditingController tc8 = TextEditingController();
  TextEditingController tc9 = TextEditingController();
  TextEditingController tc10 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 20,
                  child: Text('Controle Eficiência'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
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
                  height: 15,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Data'),
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Pedido:'),
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
                    child: Text('Placa:'),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('CIT:'),
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
                    child: Text('Produtivo:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
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
                    child: Text('M/O:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
                      child: TextField(
                          controller: tc5,
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
                    child: Text('Hora Vendida:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
                      child: TextField(
                          controller: tc6,
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
                    child: Text('Hora Aplicada:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
                      child: TextField(
                          controller: tc7,
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
                    child: Text('Eficiência:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
                      child: TextField(
                          controller: tc8,
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
                    child: Text('Motivo Variação:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
                      child: TextField(
                          controller: tc9,
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
                    child: Text('Ação Corretiva:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
                      child: TextField(
                          controller: tc10,
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
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {}, // falta direcionar para tela xpto
                          child: Text('Salvar')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => posvenda()));
                          },
                          child: Text('Voltar')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
