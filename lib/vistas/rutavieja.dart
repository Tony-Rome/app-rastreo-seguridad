import 'package:flutter/material.dart';

class Rutavieja extends StatelessWidget {
  Rutavieja(this.nombreruta);
  final nombreruta;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ver/Editar ruta')),
      body:Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: <Widget>[
        Center(child:nombre(nombreruta)),
        Column(children: <Widget>[
        MapaViejo(),
        Center(child: boton()),]),
      ],)
    );
  }
Widget nombre(nombreruta){
  return Padding(padding: EdgeInsets.symmetric(horizontal:10, vertical:5),
  child: Card(child:Padding(padding: EdgeInsets.symmetric(horizontal:3,vertical:3),
  child: Text(nombreruta))))
;}

Widget boton(){
  return RaisedButton(onPressed: (){print ('Editar/Guardar');}, child: Text('Editar/Guardar'),
  );
}

}

class MapaViejo extends StatefulWidget {
  @override
  _MapaViejoState createState() => _MapaViejoState();
}

class _MapaViejoState extends State<MapaViejo> {
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 500, decoration: BoxDecoration(border: Border.all(color:Colors.blue)),  
    );
  }
}

