import 'package:flutter/material.dart';

class Contactos extends StatefulWidget {
  @override
  _ContactosState createState() => _ContactosState();
}

class _ContactosState extends State<Contactos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contactos')),
      body:Column( children: <Widget>[
        Botonagregar(),
        Listacontactos()]),
      floatingActionButton: Botonsolicitudes() ,
    );
  }
}

class Listacontactos extends StatefulWidget {
  @override
  _ListacontactosState createState() => _ListacontactosState();
}

class _ListacontactosState extends State<Listacontactos> {
  var lista=['Juan', 'Cuasimodo', 'Feraberto', 'Michael', 'Federica', 'Salmón', 'Rogelio', 'Monserrat',
  'Maria', 'Carmen', 'Chicharito','Juan', 'Cuasimodo', 'Feraberto', 'Michael', 'Federica', 'Salmón', 'Rogelio', 'Monserrat',
  'Maria', 'Carmen', 'Chicharito'];
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(decoration: BoxDecoration(border:Border.all(color:Colors.blue,width: 2)),height: 500,
      child: ListView.separated(
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index){
          return Botoncontacto(Text(lista[index]));
        },
        separatorBuilder: (context, index) => Divider(
        color: Colors.black,
        ))));
  }
}

class Botoncontacto extends StatelessWidget{
  Botoncontacto(this.nombre);
  final Text nombre;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding:EdgeInsets.symmetric(horizontal:10, vertical:5) ,child: nombre),
    );
  }
}

class Botonagregar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(padding:EdgeInsets.symmetric(horizontal:100, vertical: 30),child:FlatButton(onPressed:(){print ('hola');},color:Colors.blue,child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Icon(Icons.add, color: Colors.white,),
        Text('Agregar contacto',style:TextStyle(color: Colors.white),),]),)
      ))
    );
  }
}

class Botonsolicitudes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 100,
                  color: Colors.red,
                ));
      },
    );
}}   