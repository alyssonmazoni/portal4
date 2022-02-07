import 'package:flutter/material.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'package:rizzi/interface/tela_login.dart';
import 'tela_login.dart';
import 'package:rizzi/interface/responsive_teste.dart';
import 'package:rizzi/interface/Menu1.dart';

/// Provides a UI to select a authentication type page
class SystemHome extends StatefulWidget {
  _SystemHome createState() => _SystemHome();
}

class _SystemHome extends State<SystemHome> {
  bool _initialized = false;
  bool _error = false;

  void pushPageFromHome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResumoOss()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Row(
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            child: FittedBox(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Container(
                            height: 15,
                            width: 20,
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
                                            builder: (context) => TelaLogin()));
                                  },
                                  child: Text('Acesso ao Portal',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white))),
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
                                          builder: (context) => MyApp()));
                                },
                                child: Text(
                                  'Menu',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
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
                                          builder: (context) => Menu1()));
                                },
                                child: Text(
                                  'Menu',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 120,
                              width: 80,
                              child: FittedBox(
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                child: Image.network(
                                    'https://media.istockphoto.com/photos/trader-at-work-picture-id1143910377?b=1&k=20&m=1143910377&s=170667a&w=0&h=-nOqtyMve2RFXIQe2hzhwDMFzKVIJ-lRJLoGP9s23FA='),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.all(8),
                              height: 350,
                              width: 200,
                              child: Container(
                                  child: Text(
                                'A RIZZI Consulting é uma empresa de consultoria que se estabeleceu em 2000 e iniciou as suas atividades com o desenvolvimento e aplicações de treinamentos comerciais e técnicos, tendo soluções aplicadas para a área automobilí­stica. Ao longo do tempo passamos a desenvolver e aplicar soluções ligadas a  análise, aplicação, e melhoria conti­nua (Kaizen) no que tange as Áreas de Vendas, Pós-Venda (P&S) para montadoras automobilí­sticas, através de assessorias, consultorias e auditorias. Atualmente a RIZZI Consulting, além das atividades mencionadas anteriormente, também desenvolve e aplicada ferramentas informáticas focada em Gestão Estratégica ',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: <Widget>[
                            Icon(Icons.call),
                            Text('+55(19)3465-2318')
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.email),
                            Text('contato@rizziconsulting.com.br')
                          ],
                        ),
                      ],
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            )));
  }
}
