import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:rizzi/interface/Home.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/Painel_Controlemedidas.dart';

/// Provides a UI to select a authentication type page
class DesempenhoOficina extends StatefulWidget {
  _DesempenhoOficina createState() => _DesempenhoOficina();
}

final elements1 = ["", "S", "F", "P", "C"];

int selectedIndex1 = 0;
int selectedIndex2 = 0;
int selectedIndex3 = 0;
int selectedIndex4 = 0;
int selectedIndex5 = 0;

class _DesempenhoOficina extends State<DesempenhoOficina> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();
  TextEditingController tc4 = TextEditingController();
  TextEditingController tc5 = TextEditingController();
  TextEditingController tc6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('DESEMPENHO OFICINA MECÂNICA')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: SingleChildScrollView(
              child: Column(children: [
            const Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('DESEMPENHO OFICINA MECÂNICA',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
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
                    child: Text('     Data:'),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70)),
                        alignment: Alignment.center,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.brown,
                  ),
                  Expanded(
                    child: Text('  H. Disponíveis Reais:'),
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
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.green,
                  ),
                  Expanded(
                    child: Text('   H. Vendidas Todos Serviços:'),
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
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.orange,
                  ),
                  Expanded(
                    child: Text('  H. Vendidas:'),
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
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Text('   Valor de M.O. Vendida:'),
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
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.blueGrey,
                  ),
                  Expanded(
                    child: Text('  Valor de Peças Vendidas:'),
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
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 5,
                    height: 5,
                    color: Colors.blue,
                  ),
                  Expanded(
                    child: Text('  Número de produtivos:'),
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
            const Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Legendas do Sistema de Medidas',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.brown,
                    child: Text(
                      "13",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '   Horas Disponíveis Reais',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.green,
                    child: Text(
                      "14",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '   Horas Vendidas (Todos os serviços) ',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.orange,
                    child: Text(
                      "15",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '    Horas Vendidas (C1 e Serviço Expresso)',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.red,
                    child: Text(
                      "16",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '   Valor de M.O. Vendida (R) (Todos os serviços) ',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.blueGrey,
                    child: Text(
                      "17",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '   Valor de Peças Vendidas (R) (Todos os serviços) ',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.purpleAccent,
                    child: Text(
                      "18",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '   Número de produtivos do Período',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PainelControleMedidas()));
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
