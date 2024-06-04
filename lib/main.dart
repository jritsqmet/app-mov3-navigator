import 'package:app_03/screens/Ventana01.dart';
import 'package:app_03/screens/Ventana02.dart';
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
  int indice=0;
  @override
  Widget build(BuildContext context) {
    /////////////////////////////////
    List <Widget> screens =[
      Cuerpo(context),
      const Ventana01(),
      const Ventana02()
    ];
    //////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicación 03"),
      ),
      body:  screens[2],
      //////////////////////////////////////////////////////////////////
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: ( valor ) {
          setState(() {
            indice = valor;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ventana 01"),
          BottomNavigationBarItem(icon: Icon(Icons.no_drinks), label: "Ventana 02"),
          BottomNavigationBarItem(icon: Image.network("https://4kwallpapers.com/images/walls/thumbs_3t/9292.jpg", scale: 20,), label: "Ventana 03")
        ],
        ),
        //////////////////////////////////////////////////////////
    );
  }
}

Widget Cuerpo( context){
  return Center(
    child: Column(
      children: <Widget> [
       Titulo(),   
       Boton1(context),
       Boton2(context)
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

// ignore: non_constant_identifier_names
Widget Boton2( context ){
  return ( 
    FilledButton(onPressed: (){
      ///////////////////////////
      Navigator.push(context, MaterialPageRoute(builder: 
        (context)=> const Ventana02()
      ));
      /////////////////////////

    }, child: const Text("Ir a la Ventana 2"))
   );
}
