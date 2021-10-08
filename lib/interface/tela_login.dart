import 'package:flutter/material.dart';
import 'package:rizzi/interface/cadastro_simplesoap.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page
class TelaLogin extends StatefulWidget {
  _TelaLogin createState() => _TelaLogin();
}

class _TelaLogin extends State<TelaLogin> {
  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Column(children: [
            Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.spaceAround),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Usuário'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
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
                    child: Text('Senha'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 30,
                      width: 5,
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
                  child: Text('Confirmar Senha'),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 30,
                    width: 5,
                    child: TextField(
                        controller: tc3,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center),
                  ),
                ),
              ],
            ),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Telamenu()));
                          },
                          child: Text('Entrar')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        cadastrosinmplesoap()));
                          },
                          child: Text('Cadastrar')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
