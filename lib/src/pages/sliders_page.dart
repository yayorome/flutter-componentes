import 'package:flutter/material.dart';

class SlidersPage extends StatefulWidget {
  @override
  _SlidersPageState createState() => _SlidersPageState();
}

double _valor = 200;
bool _blockCheck = false;

class _SlidersPageState extends State<SlidersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño imagen',
      divisions: 20,
      value: _valor,
      min: 10,
      max: 400,
      onChanged: (_blockCheck)
          ? null
          : (value) {
              setState(() {
                _valor = value;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://cnet4.cbsistatic.com/img/Bj7wndFpQL4KQUjW_o5c09bJYIw=/470x836/2017/02/03/b3d7a423-c06e-46c3-a559-60fb74e56bb1/batmangeorgeclooney.jpg'),
      width: _valor,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _blockCheck,
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _blockCheck,
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }
}
