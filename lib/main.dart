import 'package:app_03/screens/Ventana01.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Aplicacion3());
}

class Aplicacion3 extends StatelessWidget {
  const Aplicacion3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplicacion 03",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicación 03"),
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo( context){
  return Center(
    child: Column(
      children: <Widget> [
       Titulo(),   
       Boton1(context) 
      ],
    ),
  );
}

Widget Titulo(){
  return ( 
    const Text("Uso de Navegadores")
  );
}

Widget Boton1( BuildContext context){
  return( 
    ElevatedButton(
      onPressed: () {
      ///////////////////////////////////
      Navigator.push(context, MaterialPageRoute(
        builder:  (context) => Ventana01()
        )
        );
      //////////////////////////////////

    },
    child: Text("Ir a la Ventana 1"),
    )
  );
}
