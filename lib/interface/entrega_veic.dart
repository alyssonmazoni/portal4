import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/cadastro_simplesoap.dart';
import 'package:rizzi/interface/modulo_oap.dart';
import 'package:rizzi/interface/painel_controlemedidas.dart';
import 'package:rizzi/interface/sistema_medidasoap.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class entregaveic extends StatefulWidget {
  _entregaveic createState() => _entregaveic();
}

class _entregaveic extends State<entregaveic> {
  DateTime dateForm = DateTime.now();

  final elements1 = [
    "",
    "Cidade01",
    "Cidade02",
    "Cidade03",
    "Cidade04",
  ];

  final elements2 = [
    "",
    "Microwork",
    "T-Systems",
    "NBS",
    "Shapeness",
    "Linx - Sisdia",
    "Linx DMS",
    "Mapper",
    "Próprio"
  ];

  final elements3 = ["", "Estado01", "Estado02"];

  final elements4 = ["", "P", "M", "G"];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Entrega do Veículo')),
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
                    child: Text('ENTREGA DO VEÍCULO'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('Mantenha sempre atualizado'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.redAccent,
                    height: 35,
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
                      child: Text('11 - Veículos entregues no período'),
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
                      child: Text('12 - Veículos prontos no prazo combinado'),
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
                      child: Text('%Veículos entregues no período - (11 ÷ 5)'),
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
                      child: Text(
                          '% Veículos prontos no prazo combinado - (12 ÷ 11)'),
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
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 5,
                        child: ElevatedButton(
                            onPressed: () {}, // falta direcionar para tela xpto
                            child: Text('Próximo')),
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
                                      builder: (context) =>
                                          painelmedidasoap()));
                            },
                            child: Text('Voltar')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 15,
                        width: 5,
                        alignment: Alignment.center,
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
                                      builder: (context) =>
                                          sistemamedidasoap()));
                            },
                            child: Text('Menu')),
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
