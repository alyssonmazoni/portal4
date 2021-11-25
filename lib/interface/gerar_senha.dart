import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rizzi/interface/cadastro_simplesoap.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/tela_login.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page
class gerarsenha extends StatefulWidget {
  _gerarsenha createState() => _gerarsenha();
}

class _gerarsenha extends State<gerarsenha> {
  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Gerar Senha')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 40,
                  width: 10,
                  child: Text('Criar Login'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
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
                  alignment: Alignment.center,
                  child: Text(
                      '   Para ter acesso completo a este site, você primeiro precisa criar uma conta.'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Escolha um email ou uma identificação'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Text('   Identificação / email'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 10,
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
                    child: Text('   Senha'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 10,
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
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 10,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaLogin()));
                          },
                          child: Text('ACESSAR')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  alignment: Alignment.center,
                  child: Text('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                      '   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 10,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SystemHome()));
                          },
                          child: Text('ACESSO VISITANTE')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 10,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaLogin()));
                          },
                          child: Text('Efetivar o Cadastro')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                      'Copyright © 2000 - 2021 Desenvolvido por RizziConsulting'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Copyright © 2021 for JB'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
