import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:rizzi/interface/modulo_oap.dart';
import 'package:rizzi/interface/modulo_oficinaoap.dart';
import 'package:rizzi/interface/pos_venda.dart';
import 'my_selection_item.dart';
import 'package:direct_select/direct_select.dart';

/// Provides a UI to select a authentication type page
class ServicoExterno extends StatefulWidget {
  _ServicoExterno createState() => _ServicoExterno();
}

final elements1 = ["", "S", "F", "P", "C"];

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

class _ServicoExterno extends State<ServicoExterno> {
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
        appBar: AppBar(title: Text('Serviço Externo')),
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
                  alignment: Alignment.center,
                  color: Colors.grey[850],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            const Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Cadastro Serviço Externo',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[850],
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
                    child: Text('  Conta:'),
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
                    child: Text('  Chassi:'),
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
                    child: Text('  Pedido:'),
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
                    child: Text('  Local:'),
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
                    child: Text('  Produtivo:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
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
                    child: Text('  Situação:'),
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
                    child: Text('  Classe:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc6,
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
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white70)),
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                  child: Text('OBSERVAÇÃO'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc7,
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
                  alignment: Alignment.center,
                  color: Colors.grey[850],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.grey[850],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.blue,
                    child: Text(
                      "F",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '  FINALIZADO',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[850],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.grey[850],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.green,
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '  EM SERVIÇO',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[850],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.grey[850],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.orange,
                    child: Text(
                      "P",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '  PROGRAMAÇÃO FUTURA',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[850],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.grey[850],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    color: Colors.red,
                    child: Text(
                      "C",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '  CANCELADO',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[850],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ModuloOficinaoap()));
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ModuloOap()));
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
                                  builder: (context) => posvenda()));
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
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
