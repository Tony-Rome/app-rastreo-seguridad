import 'package:flutter/material.dart';

class Rutanueva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Agregar nueva ruta')),
      body:Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: <Widget>[
        Center(child: _inputnombre()),
        Column(children: <Widget>[
        MapaNuevo(),
        Center(child: _boton()),]),
      ],)
    );
  }

Widget _inputnombre(){
  String _nombreruta;
  final _formKey = GlobalKey<FormState>();
  return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), child:TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.location_on),
            hintText: 'De casa al trabajo',
            labelText: 'Nombre ruta',
          ),
          validator: (value) {
              if (value.isEmpty) {
                return 'Campo vacío';
              }
              return null;
            },
          onSaved: (value) => _nombreruta=value,
        )),]));
  }
}

Widget _boton(){
  return RaisedButton(color:Colors.blue,onPressed: (){print ('Guardar');}, child: Text('Guardar'),
  );
}


class MapaNuevo extends StatefulWidget {
  @override
  _MapaNuevoState createState() => _MapaNuevoState();
}

class _MapaNuevoState extends State<MapaNuevo> {
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 500, decoration: BoxDecoration(border: Border.all(color:Colors.blue)),  
    );
  }
}