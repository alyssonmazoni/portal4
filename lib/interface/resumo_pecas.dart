import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class ResumoPecas extends StatefulWidget {
  _ResumoPecas createState() => _ResumoPecas();
}

class _ResumoPecas extends State<ResumoPecas> {
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Resumo Peças')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    height: 40,
                    width: 10,
                    child: Text('Resumo Peças'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: Text('Serviços e Peças Limitadas Brasil S/A.'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white70,
                    height: 40,
                    width: 10,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.spaceAround),
              Row(
                  children: [
                    Expanded(
                      child: Text('  Data:'),
                    ),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70)),
                          alignment: Alignment.center,
                          height: 40,
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
                              child: Text(
                                  DateFormat('dd-MM-yy').format(dateForm)))),
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
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Cód:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Peça:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Qtd:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Curva:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 5,
                        child: DirectSelect(
                            itemExtent: 80.0,
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
              Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70)),
                    alignment: Alignment.center,
                    height: 40,
                    width: 10,
                    child: Text('MOTIVO FALTA'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
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
              Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70)),
                    alignment: Alignment.center,
                    height: 40,
                    width: 10,
                    child: Text('AÇÃO CORRETIVA'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
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
                      child: Text('  Venda Cliente:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Venda Garantia:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Venda Custo:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                      child: Text('  Venda Balcão:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                        height: 25,
                        width: 5,
                        child: ElevatedButton(
                            onPressed: () {}, // falta direcionar para tela xpto
                            child: Text('Salvar')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 300,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResumoOss()));
                            },
                            child: Text('Resumo OSs')),
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
                                      builder: (context) => Iapo()));
                            },
                            child: Text('Voltar')),
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
                            child: Text('Sair')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
        ));
  }
}
