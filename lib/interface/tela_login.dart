import 'package:flutter/material.dart';
import 'package:rizzi/interface/cadastro.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page
class TelaLogin extends StatefulWidget {
  _TelaLogin createState() => _TelaLogin();
}

class _TelaLogin extends State<TelaLogin> {
  DateTime dateForm = DateTime.now();

  final elements1 = [
    "",
    "Cidade01",
    "Cidade02",
    "Cidade03",
    "Cidade04",
  ];

  final elements3 = ["", "Estado01", "Estado02"];

  final elements4 = ["", "P", "M", "G"];

  final elements5 = ["Peça faltante", "Nova solicitação"];

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 20,
                  child: Text('Tela de Login'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.spaceAround),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceAround),
            Row(
                children: [
                  Expanded(
                    child: Text('Usuário'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(controller: tc1),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Senha'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(controller: tc2),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
              children: [
                Expanded(
                  child: Text('Confirma Senha'),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextField(controller: tc3),
                  ),
                ),
              ],
            ),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Telamenu ()));},
                          child: Text('Entrar')),
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
                                    builder: (context) => InputTextTest()));
                          },
                          child: Text('Cadastrar')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
