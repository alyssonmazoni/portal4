import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:rizzi/interface/cadastro_consultor.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/modulo_oap.dart';

/// Provides a UI to select a authentication type page
class CadastroGerencia extends StatefulWidget {
  _CadastroGerencia createState() => _CadastroGerencia();
}

class _CadastroGerencia extends State<CadastroGerencia> {
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
        appBar: AppBar(title: Text('Cadastro Gerencia')),
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
                      height: 1,
                      width: 1,
                    ),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                const Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Cadastro Gerencia',
                        style: TextStyle(fontSize: 10, color: Colors.black)),
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.grey[850],
                      height: 1,
                      width: 1,
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
                            width: 5,
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
                        child: Text('  Conta:'),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          height: 15,
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
                          height: 15,
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
                          height: 15,
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
                Row(children: [
                  Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    color: Colors.grey[850],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: Text(
                          'Informar abaixo apenas quando o colaborador estiver ausente',
                          style: TextStyle(fontSize: 11, color: Colors.blue)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    color: Colors.grey[850],
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 80,
                        color: Colors.grey[850],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 5,
                        height: 5,
                        color: Colors.grey[850],
                      ),
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
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 80,
                        color: Colors.grey[850],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        color: Colors.grey[850],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Container(
                    alignment: Alignment.center,
                    width: 10,
                    height: 10,
                    color: Colors.grey[850],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 10,
                      width: 10,
                      child: Text('Justificar Ausência',
                          style: TextStyle(fontSize: 11, color: Colors.blue)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 10,
                    height: 10,
                    color: Colors.grey[850],
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 2,
                        height: 2,
                        color: Colors.grey[850],
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 80,
                          maxWidth: 380,
                        ),
                        child: TextField(
                            maxLines: 3,
                            decoration:
                            InputDecoration(border: OutlineInputBorder()),
                            controller: tc9,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 5,
                        height: 5,
                        color: Colors.grey[850],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    color: Colors.grey[850],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: Text('Autor da Justificativa somente Gerente*',
                          style: TextStyle(fontSize: 11, color: Colors.red)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    color: Colors.grey[850],
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 1,
                        height: 1,
                        color: Colors.grey[850],
                      ),
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
                      Container(
                        alignment: Alignment.center,
                        width: 1,
                        height: 1,
                        color: Colors.grey[850],
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
                      Container(
                        alignment: Alignment.center,
                        width: 10,
                        height: 10,
                        color: Colors.grey[850],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
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
                                      builder: (context) => ModuloOap()));
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
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
