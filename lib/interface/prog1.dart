import 'package:flutter/material.dart';
import 'package:rizzi/interface/cadastro_nome.dart';


/// Provides a UI to select a authentication type page
class Prog1 extends StatefulWidget {
  _Prog1 createState() => _Prog1();
}

class _Prog1 extends State<Prog1> {
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
        appBar: AppBar(title: Text('PROGRAMAÇÃO TV')),
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
                    'PROGRAMAÇÃO OFICINA',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
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
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: Container(
                        child: Text(
                          'MEC-1',
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
                          'MEC-2',
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
                            'MEC-3',
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
                          'MEC-4',
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
                          'MEC-5',
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
                          'MEC-6',
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
                          'MEC-7',
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
                          'MEC-8',
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
                          'MEC-9',
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc9,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 10,
                      child: TextField(
                          controller: tc10,
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
                              'EM SERVIÇO',
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
                              'SERVIÇO FINALIZADO',
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
                              'SERVIÇO PROGRAMADO (FUTURO)',
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
                              'EM TESTE OU AGUARDANDO TESTE ',
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
                            child:
                                Text('EM ATRASO', textAlign: TextAlign.center),
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
                            child: Text('MECÂNICO AUSENTE DA EMPRESA',
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
                              child: Text('SERVIÇO TEMPORARIAMENTE PARADO',
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
                        'MECÂNICO EM SERVIÇO EXTERNO',
                        textAlign: TextAlign.center,
                      ))),
                    ),
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
                        'HORÁRIO DISPONÍVEL',
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
                  width: 30,
                  height: 30,
                  color: Colors.green,
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                  child: Text(
                    "F",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  color: Colors.orange,
                  child: Text(
                    "P",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.yellow,
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.red,
                  child: Text(
                    "AT",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.grey,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.black,
                  child: Text(
                    "TP",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.purple,
                  child: Text(
                    "EXT",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  color: Colors.white,
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 15, color: Colors.white),
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
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CadastroNome()));
                          },
                          child: Text('Seguir')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
