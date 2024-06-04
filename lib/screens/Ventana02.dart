import 'package:flutter/material.dart';

void main() {
  runApp(Ventana02());
}

class Ventana02 extends StatelessWidget {
  const Ventana02({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text('Title'),
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo( context) {
  return (Column(
    children: <Widget>[
      Text("Transformación"),
      Campo(),
      BotonTransformar(context)
    ],
  ));
}
//////////////////////////////////////////////////////////
/// TRANSFORMACIÓN DE °C A °F
/// /////////////////////////////////////////////////////
// ignore: non_constant_identifier_names
Widget Campo() {
  return Container(
    padding: EdgeInsets.all(10),
    child: (
      TextField(
        controller: _celcius,
        decoration:
            InputDecoration(hintText: "Ingresar temperatura en  Celcius"),
            keyboardType: TextInputType.number,)
            
            ),
  );
}

Widget BotonTransformar(context){
  return( 
    FilledButton(onPressed: (){
      alertRespuesta(context);
    }, child: Text("Transformar"))
  );
}

double transformacion (  ){
  double celcius = double.tryParse(_celcius.text) ?? 0.00;
 
  return (celcius * 1.8) +32;
}

void alertRespuesta(context){
  showDialog(context: context, builder: (context){
    return  AlertDialog(
      title: Text("Respuesta"),
      content: Text("La temperatura es ${transformacion()}"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("CERRAR"))
      ],
    );
  }
 
  );
}

final  TextEditingController _celcius = TextEditingController();