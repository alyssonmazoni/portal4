import 'package:flutter/material.dart';
import 'package:rizzi/interface/Cadastro_Conta.dart';
import 'package:rizzi/interface/Create_Download.dart';
import 'package:rizzi/interface/Modulo_Rizzi.dart';
import 'package:rizzi/interface/Painel_Controlemedidas.dart';

// TESTE DE MENU RESPONSIVO
// verificar novo pacote de botoes

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(context) => MaterialApp(initialRoute: "/Meu login", routes: {
        "/Meu login": (context) => Login1(),
        "/home": (context) => home()
      });
}

class Login1 extends StatelessWidget {
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
      appBar: AppBar(title: Text("Minha Lista Full")),
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
                  MaterialPageRoute(builder: (context) => CadastroConta()));
            },
            child: ListTile(
              leading: Icon(Icons.book_online),
              title: Text("Cad.Inicial",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PainelControleMedidas()));
            },
            child: ListTile(
              leading: const Icon(Icons.local_atm),
              title: Text("Planejamento",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.bus_alert),
              title: Text("Prog.Oficina",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.watch),
              title: Text("Apontamento",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.date_range_sharp),
              title: Text("Agendamento",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.edit_location_outlined),
              title: Text("Recepção",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.lock_clock),
              title: Text("Ser.Expresso",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.pending_actions_sharp),
              title: Text("Enc.da OS",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.delivery_dining_rounded),
              title: Text("Ent.Veículo",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.medication_sharp),
              title: Text("Diagnóstico",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.car_repair_rounded),
              title: Text("Rep.Manutenção",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ModuloRizzi()));
            },
            child: ListTile(
              leading: Icon(Icons.admin_panel_settings_outlined),
              title: Text("Modulo Rizzi ",
                  style: TextStyle(fontSize: 9, color: Colors.black)),
            )),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Creat_Download()));
            },
            child: ListTile(
              leading: Icon(Icons.arrow_drop_down),
              title: Text("Downloads",
                  style: TextStyle(fontSize: 9, color: Colors.green)),
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
              title: Text("Log Out",
                  style: TextStyle(fontSize: 9, color: Colors.redAccent)),
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
