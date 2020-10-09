import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro')),
      body: FormRegistro(),
    );
  }
}

class FormRegistro extends StatefulWidget {
  @override
  FormRegistroState createState() {
    return FormRegistroState();
  }
}


class FormRegistroState extends State<FormRegistro> {
  final _formKey = GlobalKey<FormState>();
  String _nombre;
  String _apellido;
  String _mail;
  String _clave;
  String _clave2;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), child:TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.account_circle),
            hintText: 'Juan Carlos',
            labelText: 'Nombres',
          ),
          validator: (value) {
              if (value.isEmpty) {
                return 'Campo vacío';
              }
              return null;
            },
          onSaved: (value) => _nombre=value,
        )),
        Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), child:TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.account_circle),
            hintText: 'Villagrán Pino',
            labelText: 'Apellidos',
          ),
          validator: (value) {
              if (value.isEmpty) {
                return 'Campo vacío';
              }
              return null;
            },
          onSaved: (value) => _apellido=value,
        )),
          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), child:TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.mail),
            hintText: 'usuario@hotmail.com',
            labelText: 'Mail',
          ),
          validator: (value) {
              if (value.isEmpty) {
                return 'Campo vacío';
              }
              return null;
            },
          onSaved: (value) => _mail=value,
        )),
          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), child:TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.vpn_key),
            hintText: '***********',
            labelText: 'Contraseña',
          ),
          validator: (value) {
              if (value.isEmpty) {
                return 'Campo vacío';
              }
              return null;
            },
          onSaved: (value) => _clave=value,
        )),
        Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), child:TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.keyboard_arrow_right),
            hintText: '***********',
            labelText: 'Repetir Contraseña',
          ),
          validator: (value) {
              if (value.isEmpty) {
                return 'Campo vacío';
              }
              return null;
            },
          onSaved: (value) => _clave2=value,
        )),
        RaisedButton(
          color: Colors.blue,
          onPressed: () {
            if (_formKey.currentState.validate()) {
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('Registrando')));}},
        child: Text('Registrar'),),
        ]));
  }
}