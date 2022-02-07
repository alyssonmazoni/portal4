import 'package:flutter/material.dart';
import 'package:rizzi/interface/painel_controlemedidas.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                      RaisedButton(
                          color: Colors.blue,
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
      appBar: AppBar(title: Text("Minha Lista")),
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
        FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PainelControleMedidas()));


            },
            child: ListTile(
              leading: Icon(Icons.looks_one_sharp),
              title: Text("Planejamento"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_two_sharp),
              title: Text("Programação Oficina"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_3_sharp),
              title: Text("Apontamento"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_4_sharp),
              title: Text("Agendamento"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_5_sharp),
              title: Text("Recepção"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_6_sharp),
              title: Text("Serviço Expresso"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_6),
              title: Text("Encerramento da OS"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Entrega do Veículo"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Diagnóstico"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Reparo e Manutenção"),
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Consulta NPS"),
            )),
        FlatButton(
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
    "Planejamento",
    "Programação Oficina",
    "Apontamento",
    "Agendamento",
    "Recepção",
    "Serviço Expresso",
    "Encerramento da OS",
    "Entrega do Veículo",
    "Diagnóstico",
    "Reparo e Manutenção",
    "Consulta NPS"
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
