import 'package:flutter/material.dart';

/// Provides a UI to select a authentication type page
class PainelAg1 extends StatefulWidget {
  _PainelAg1 createState() => _PainelAg1();
}

class _PainelAg1 extends State<PainelAg1> {
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
        appBar: AppBar(title: Text('Painel Agenda TV')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  alignment: Alignment.center,
                  height: 20,
                  width: 10,
                  child: Text(
                    'AGENDAMENTOS DE SERVIÇOS',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'HORÁRIO',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(4),
                      height: 20,
                      width: 5,
                      child: Container(
                        child: Text(
                          'TP',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: FittedBox(
                          child: Text(
                            'CLIENTE',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'PLACA',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'MODELO',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'TP SERVIÇO',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'CONSULTOR',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'PREV.ENTREGA',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'STATUS',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc2,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 5,
                      child: TextField(
                          controller: tc3,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc4,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc5,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc6,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc7,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc8,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc9,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: 50,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  height: 20,
                  width: 10,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text(
                              'AGENDADO',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text(
                              'ATIVO',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text(
                              'PASSANTE',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text('ENTREGA', textAlign: TextAlign.center),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                            child: Text('Expresso Ativo',
                                textAlign: TextAlign.center),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 10,
                        child: FittedBox(
                          child: Container(
                              child: Text('Expresso Receptivo',
                                  textAlign: TextAlign.center)),
                        )),
                  ),
                  Expanded(
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                          child: FittedBox(
                              child: Text(
                        'Serviço Interno',
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.blue,
                  child: Text(
                    "AG",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.purple,
                  child: Text(
                    "AA",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.yellow,
                  child: Text(
                    "P",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.green,
                  child: Text(
                    "E",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.black,
                  child: Text(
                    "SEA",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.black,
                  child: Text(
                    "SER",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.grey,
                  child: Text(
                    "SI",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed:
                              () {}, // falta direcionar para databases enviar
                          child: Text('Enviar')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed:
                              () {}, // falta direcionar para databases editar
                          child: Text('Editar')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
