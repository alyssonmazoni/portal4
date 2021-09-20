import 'package:flutter/material.dart';

/// Provides a UI to select a authentication type page
class InputTextTest extends StatefulWidget {
  _InputTextTest createState() => _InputTextTest();
}

class _InputTextTest extends State<InputTextTest> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {}, // falta direcionar para rela xpto
                    child: Text('Inserir Informação')),
              ),
              Row(
                  children: [
                    Expanded(
                          child: Text('Salva Info.'),
                        flex : 1,
                    ),
                    Expanded(
                        child: TextField(controller: tc1),
                       flex : 6
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Concessionária_Id'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc1)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Concessionário'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc2)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Data'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc3)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('O.S'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc4)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Tipo'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc5)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Classe'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc6)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Solicitada'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc7)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Disponível'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc8)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Separação'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc9)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Tipo solicitação'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc10)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Qtd.Registro'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc11)),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
