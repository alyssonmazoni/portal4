import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:rizzi/interface/Modulo_Rizzi.dart';
import 'my_selection_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class GradeHoras extends StatefulWidget {
  _GradeHoras createState() => _GradeHoras();
}

class _GradeHoras extends State<GradeHoras> {
  DateTime dateForm = DateTime.now();

  final elements1 = ["", "06:00", "07:00", "08:00"];

  final elements2 = ["", "11:00", "11:15", "11:30", "11:45", "12:00", "ALMOÇO"];

  final elements3 = ["", "13:00", "13:15", "13:30", "13:45", "14:00", "ALMOÇO"];

  final elements4 = ["", "17:00", "17:30", "18:00", "18:30"];

  final elements5 = ["", "00:10", "00:15", "00:30"];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Grade Horas')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 40,
                  width: 10,
                  child: Text('Horas'),
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
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70)),
                        height: 35,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('  H.Inicio Dia:'),
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
                    child: Text('  H.Inicio Almoço:'),
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
                    child: Text('  H.Fim Almoço:'),
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
                    child: Text('  H.Fim dia:'),
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
                    child: Text('  Intervalo:'),
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
                      height: 25,
                      width: 5,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          onPressed: () {}, // falta direcionar para tela xpto
                          child: Text('Salvar')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 25,
                      width: 300,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ModuloRizzi()));
                          },
                          child: Text('Modulo Rizzi')),
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
                                    builder: (context) => ModuloRizzi()));
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
