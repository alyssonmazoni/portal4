import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:rizzi/interface/Home.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/Painel_Controlemedidas.dart';

/// Provides a UI to select a authentication type page
class RepManutencao extends StatefulWidget {
  _RepManutencao createState() => _RepManutencao();
}

class _RepManutencao extends State<RepManutencao> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('REP.MANUTEÇÃO')),
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
                      color: Colors.white,
                      height: 5,
                      width: 5,
                    ),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                const Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('REP & MANUT.',
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
                    color: Colors.blue,
                  ),
                  Expanded(
                    child: Text('  Qtde.Vcl test e reprov:'),
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
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Text('  Vcl liberados sem retorno :'),
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
                    color: Colors.blue,
                    child: Text(
                      "10",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '    Qtde. de veículos testados e reprovados',
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
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Text(
                      '   % Veículos liberados sem retorno - (10 ÷ 11) ',
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
