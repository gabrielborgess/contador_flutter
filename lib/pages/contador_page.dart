import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState()=>_ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{

  final _FuenteInicio=new TextStyle(fontSize: 25);

  int _conteo=12;

    @override
    Widget build(BuildContext context) {

      return Scaffold(
        appBar:AppBar(
          title: Text("title"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Numero de taps:",style:_FuenteInicio,),
              Text("$_conteo",style: _FuenteInicio,),
            ],
          ),
        ),
        floatingActionButton:_crearBotones(),


      );
    }

    Widget _crearBotones(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(onPressed: null, child: Icon(Icons.add_alarm)),
          FloatingActionButton(onPressed: null, child: Icon(Icons.add_alarm)),
          FloatingActionButton(onPressed: null, child: Icon(Icons.add_alarm)),
        ],
      );


        FloatingActionButton(onPressed: null, child: Icon(Icons.add_alarm));
    }

}

