import 'package:flutter/material.dart';
import 'package:rizzi/interface/chamados_oap.dart';
import 'package:rizzi/interface/modulo_rizzi.dart';
import 'package:rizzi/interface/pos_venda.dart';
import 'package:rizzi/interface/cadastro_simplesoap.dart';

/// Provides a UI to select a authentication type page
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
                    context,
                    MaterialPageRoute(
                        builder: (context) => CadastroSimplesoap()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Abertura de Chamados"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChamadosOap()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Admin"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ModuloRizzi()));

                //Navigator.pop(context);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.power),
              title: Text("Pós Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => posvenda()));

                // Navigator.pop(context);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.workspaces),
              title: Text("Vendas"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CadastroSimplesoap()));

                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
    );
  }
}
