import 'package:flutter/material.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/Eficiencia.dart';
import 'package:rizzi/interface/Separacao_Antecipada.dart';
import 'package:rizzi/interface/Servico_Expresso.dart';
import 'package:rizzi/interface/Servico_Externo.dart';

// TESTE DE MENU RESPONSIVO
// verificar novo pacote de botoes

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  @override
  Widget build(context) => MaterialApp(initialRoute: "/login", routes: {
        "/login": (context) => tela_login(),
        "/home": (context) => home()
      });
}

class tela_login extends StatelessWidget {
  @override
  Widget build(context) =>
      Scaffold(body: LayoutBuilder(builder: (context, constraints) {
        return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: Colors.lightGreen[200],
            padding: constraints.maxWidth < 500
                ? EdgeInsets.zero
                : const EdgeInsets.all(30.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 25.0),
                constraints: BoxConstraints(
                  maxWidth: 500,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Welcome to the app, please log in"),
                      TextField(
                          decoration: InputDecoration(labelText: "username")),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "password")),
                      ElevatedButton(
                          child: Text("Log in",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/home");
                          })
                    ]),
              ),
            ));
      }));
}

class home extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("Departamento Oficina")),
      drawer: MediaQuery.of(context).size.width < 500
          ? Drawer(
              child: Menu(),
            )
          : null,
      body: SafeArea(
          child: Center(
              child: MediaQuery.of(context).size.width < 500
                  ? Content()
                  : Row(children: [
                      Container(width: 200.0, child: Menu()),
                      Container(
                          width: MediaQuery.of(context).size.width - 200.0,
                          child: Content())
                    ]))));
}

class Menu extends StatelessWidget {
  @override
  Widget build(context) => ListView(children: [
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Eficiencia()));
            },
            child: ListTile(
              leading: Icon(Icons.looks_one_sharp),
              title: Text("Efici??ncia"),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ServicoExpresso()));
            },
            child: ListTile(
              leading: Icon(Icons.looks_two_sharp),
              title: Text("Servi??o Expresso"),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ServicoExterno()));
            },
            child: ListTile(
              leading: Icon(Icons.looks_two_sharp),
              title: Text("Servi??o Externo"),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeparacaoAntecipada()));
            },
            child: ListTile(
              leading: Icon(Icons.looks_two_sharp),
              title: Text("Separa????o Antecipada"),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Menu1()));
            },
            child: ListTile(
              leading: Icon(Icons.looks_two_sharp),
              title: Text("Voltar"),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ))
      ]);
}

class Content extends StatelessWidget {
  final List<String> elements = [
    "Efici??ncia",
    "Servi??o Expresso",
    "Servi??o Externo",
    "Separa????o Antecipada",
  ];
  @override
  Widget build(context) => GridView.builder(
      itemCount: elements.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 130.0,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      itemBuilder: (context, i) => Card(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Text(elements[i])))));
}
