import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _FuenteInicio = new TextStyle(fontSize: 25);

  int _conteo = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de taps:",
              style: _FuenteInicio,
            ),
            Text(
              "$_conteo",
              style: _FuenteInicio,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
            onPressed: () {
              setState(() {
                _conteo = _conteo + 1;
              });
            },
            child: Icon(Icons.add)),
        SizedBox(
          width: 10,
          height: 150,
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                if (_conteo <= 0) {
                  print("No se puede restar");
                } else {
                  _conteo = _conteo - 1;
                }
              });
            },
            child: Icon(Icons.remove)),
        SizedBox(
          width: 10,
          height: 30,
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                _conteo = 0;
              });
            },
            child: Icon(Icons.refresh)),
        SizedBox(
          width: 10,
          height: 30,
        ),
      ],
    );

    FloatingActionButton(onPressed: null, child: Icon(Icons.add_alarm));
  }
}
