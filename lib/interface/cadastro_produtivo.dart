import 'package:flutter/material.dart';
import 'package:rizzi/interface/cadastro_consultor.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

/// Provides a UI to select a authentication type page
class cadastroProdutivo extends StatefulWidget {
  _cadastroProdutivo createState() => _cadastroProdutivo();
}

class _cadastroProdutivo extends State<cadastroProdutivo> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro Produtivo')),
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
                  margin: const EdgeInsets.all(8),
                  height: 30,
                  width: 10,
                  alignment: Alignment.center,
                  child: Text('Produtivos'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white70,
                  height: 30,
                  width: 10,
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
                    child: Text('  Funcionário:'),
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
                    child: Text('  Departamento:'),
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
                    child: Text('  Ausência:'),
                  ),
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
                  color: Colors.white70,
                  height: 40,
                  width: 10,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white70)),
                  alignment: Alignment.center,
                  height: 20,
                  width: 15,
                  child: Text('Justificativa Ausência'),
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
                    child: Text('  Gerente:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc11,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                  Expanded(
                    child: Text('  Dt Registro:'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: TextField(
                          controller: tc12,
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
                                    builder: (context) => cadastroconsultor()));
                          },
                          child: Text('Seguir')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
