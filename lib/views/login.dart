import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('App ruta segura'),),
      body: BodyLogin(),
    );
  }
}

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: <Widget>[
        Center(child:Container(height: 200,width: 200,decoration: BoxDecoration(border:Border.all(color:Colors.blue,)), child:Text('Logo'))),
        FormLogin(),
        RaisedButton(onPressed:()=>Navigator.pushNamed(context, 'registro'), child: Text('Registrarse'),),
        RaisedButton(onPressed: ()=>print ('Google')  , child: Text('Iniciar Sesión con Google'),),
      ]),
    );
  }
}

class FormLogin extends StatefulWidget {
  @override
  FormLoginState createState() {
    return FormLoginState();
  }
}


class FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  String _usuario;
  String _clave;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
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
          onSaved: (value) => _usuario=value,
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
        RaisedButton(
          color: Colors.blue,
          onPressed: () {
            if (_formKey.currentState.validate()) {
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('Iniciando Sesión')));}},
        child: Text('Iniciar Sesión'),),
        ]));
  }
}