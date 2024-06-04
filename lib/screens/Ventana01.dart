import 'package:app_03/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Ventana01());
}

class Ventana01 extends StatelessWidget {
  const Ventana01({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
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
        title: Text("Ventana 01"),
      ),
      body: Cuerpo( context ),
    );
  }
}

Widget Cuerpo (context){
  return ( 
    Column(
      children: <Widget>[ 
        Boton1( context ),
        Boton2( context ),
        Boton3( context )
      ],
    )
   );
}

Widget Boton1( context ){
  return ( 
    FilledButton(onPressed: () {
      irPrincipal(context );
    }, child: Text("Ir a ventana Principal"),)
  );
}

void irPrincipal( context ){
  Navigator.pushReplacement(
    context, MaterialPageRoute(
      builder: (context)=> const Aplicacion3() ));
}

////////////////////////////////////////
//////// ALERT ////////////////////////
Widget Boton2( context){
  return( 
    ElevatedButton( onPressed: () {
      mostarAlerta01(context);
    }, child: const Text("ALerta 01") )
   );
}

void mostarAlerta01( BuildContext context ){

  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Mensaje"),
      content: Text("Este es el contenido del mensaje "),
    );
  } );
}

////////////////////////////////////////
//////// ALERT 02////////////////////////
Widget Boton3( context ){
  return ( 
    ElevatedButton(onPressed: () {
      mostrarAlerta02(context);
    }, child: Text("Alerta 02"))
  );
}

void mostrarAlerta02(context){
  showDialog(context: context, builder: (context){
    return Container(
      //////////////////////////////////////
      decoration: const BoxDecoration( 
        image: DecorationImage( 
          image: NetworkImage("https://images3.alphacoders.com/132/thumb-1920-1322308.jpeg") ,
          fit: BoxFit.cover
              )
       ),
      //////////////////////////////////////
      child: AlertDialog(
        title: Text("Mensaje 02"),
        content: Text("Este es el texto del alerta 02"),
        
        actions: <Widget> [ 
          //////////////////////////////////////////////////////////
          TextButton(onPressed: (){
            print("Aqui va una función");
            Navigator.pop(context);//Regresa
      
          }, child: Text("Si")),
          /////////////////////////////////////////////////////////////
          TextButton(onPressed: (){
      
            print("Aquí va otro función");
            Navigator.pop(context);
      
          }, child: Text("No")),
          ////////////////////////////////////////////////////////////////
            TextButton(onPressed: (){
      
            print("Aquí va otra función");
            Navigator.pop(context);
      
          }, child: Text("Cancelar"))
          //////////////////////////////////////////////////////////////
        ],
      ),
    );
  } );
}
  
 
   
  
