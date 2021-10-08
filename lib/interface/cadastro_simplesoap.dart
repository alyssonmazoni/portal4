import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/cadastro_equipeoap.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class cadastrosinmplesoap extends StatefulWidget {
  _cadastrosinmplesoap createState() => _cadastrosinmplesoap();
}

class _cadastrosinmplesoap extends State<cadastrosinmplesoap> {
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
                    child: Text('Cadastro Conta'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.start),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                        'Mantenha sempre atualizado, Para sua segurança a rotina de atualização de senha será quinzenal'),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green[500],
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('Regional'),
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
                      child: Text('Tel. Principal'),
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
                      child: Text('Cidade'),
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
                      child: Text('Estado'),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
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
                      child: Text('DMS'),
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
              Row(
                  children: [
                    Expanded(
                      child: Text('Porte'),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: DirectSelect(
                            itemExtent: 55.0,
                            selectedIndex: selectedIndex2,
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
                                          cadastroequipeoap()));
                            },
                            child: Text('Próximo')),
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
