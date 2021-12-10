import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rizzi/interface/cadastro_simplesoap.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page
class TelaLogin extends StatefulWidget {
  _TelaLogin createState() => _TelaLogin();
}

class _TelaLogin extends State<TelaLogin> {
  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('tela_login')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  child: Text('Bem Vindo a Área de Acesso ',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 20,
                  width: 20,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('   Identificação / email*',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 20,
                      child: TextField(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Identificação / email*',
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('   Senha*',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 20,
                      child: TextField(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha*',
                        ),
                      ),
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
                      height: 20,
                      width: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Telamenu()));
                          },
                          child: Text('ACESSAR',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black))),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Esta é a sua primeira vez aqui?',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 20,
                  width: 20,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: FittedBox(
                    child: Text(
                        'Para ter acesso completo a este site, você primeiro precisa criar uma conta.',
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 20,
                  width: 20,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SystemHome()));
                          },
                          child: Text('ACESSO VISITANTE',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black))),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CadastroSimplesoap()));
                        },
                        child: Text(
                          'CRIAR CONTA',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 20,
                  width: 20,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text(
                        'Copyright © 2000 - 2021 Desenvolvido por RizziConsulting',
                        style: TextStyle(fontSize: 11, color: Colors.black)),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
