import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Sub ' + item),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.blueGrey[400],
            thickness: 2.0,
          )
        ],
      );
    }).toList();
  }
}
