import 'package:crudapp/pages/contador_page.dart';
//import 'package:crudapp/pages/home_page.dart';
import 'package:flutter/material.dart';


class Myapp extends StatelessWidget{
  @override
  Widget build(context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Center(
            child:ContadorPage(),
        )

    );
  }

}