import 'package:flutter/material.dart';

class Rutas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Rutas')),
      body:Column(children:<Widget> [
        Botonagregarruta(),
        BodyRutas()]),
    );
  }
}

class BodyRutas extends StatefulWidget {
  @override
  _BodyRutasState createState() => _BodyRutasState();
}

class _BodyRutasState extends State<BodyRutas> {
  var listarutas=['ruta 1', 'ruta 2','ruta 3','ruta 4'];
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(decoration: BoxDecoration(border:Border.all(color:Colors.blue,width: 2)),height: 500,
      child: ListView.separated(
        itemCount: listarutas.length,
        itemBuilder: (BuildContext context, int index){
          return ruta(listarutas[index]);
        },
        separatorBuilder: (context, index) => Divider(
        color: Colors.black,
        ))));
  }
Widget ruta(nombre){
  return Padding(padding: EdgeInsets.symmetric(horizontal:5, vertical:5),
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
    Padding(padding:EdgeInsets.symmetric(horizontal:3, vertical:3),child: Text(nombre)),
    Row(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal:2),child:RaisedButton(color:Colors.blue,onPressed: (){print('ver');},child:Text('Ver'))),
          Padding(padding: EdgeInsets.symmetric(horizontal:2),child:RaisedButton(color:Colors.blue,onPressed:(){print('eliminar');},child:Text('Eliminar'))),],)
  ],));
}
}

class Botonagregarruta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(padding:EdgeInsets.symmetric(horizontal:100, vertical: 30),child:FlatButton(onPressed:(){print ('Agregar ruta');},color:Colors.blue,child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Icon(Icons.add, color: Colors.white,),
        Text('Agregar ruta',style:TextStyle(color: Colors.white),),]),)
      ))
    );
  }
}