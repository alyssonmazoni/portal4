import 'package:flutter/material.dart';
import 'package:rizzi/interface/Create_Download.dart';
import 'package:rizzi/interface/Responsive1.dart';
import 'package:rizzi/interface/responsive2.dart';
import 'package:rizzi/interface/responsive3.dart';
import 'package:rizzi/interface/responsive4.dart';
import 'package:rizzi/interface/responsive5.dart';
import 'package:rizzi/interface/responsive6.dart';
import 'package:rizzi/interface/responsive7.dart';

/// Provides a UI to select a authentication type page
/// Nao esquecer de arrumar a imagem
///

class Menu1 extends StatefulWidget {
  _Menu1 createState() => _Menu1();
}

class _Menu1 extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("user@mail.com"),
              accountName: Text("Jorge Borges"),
              currentAccountPicture: CircleAvatar(
                child: Text("JB"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp1()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.local_atm),
              title: Text("Planejamento"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp2()));

                // Navigator.pop(context);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.bus_alert),
              title: Text("Oficina"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp3()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Recepção"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp4()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.construction),
              title: Text("Programação"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp5()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.engineering),
              title: Text("Peças"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp6()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down),
              title: Text("Downloads"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Creat_Download()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Chamados"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp7()));

                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
    );
  }
}
