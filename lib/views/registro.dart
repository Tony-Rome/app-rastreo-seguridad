import 'package:flutter/material.dart';
import 'package:rastreo/bloc/bloc_register.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
  
  final _registerBloc = RegisterBloc(); 

  @override
  Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
            child:StreamBuilder(
              stream: _registerBloc.name,
              builder: (context, snapshot){
                return TextFormField(
                  onChanged: _registerBloc.changeName,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_circle),
                    hintText: 'Juan Carlos',
                    labelText: 'Nombres',
                    errorText: snapshot.error,
                  ),
              );},)),

          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
            child:StreamBuilder(
              stream: _registerBloc.name2,
              builder: (context, snapshot){
                return TextFormField(
                  onChanged: _registerBloc.changeName2,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'Perez Guardiola',
                    labelText: 'Apellidos',
                    errorText: snapshot.error,
                  ),
              );},)),

          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
            child:StreamBuilder(
              stream: _registerBloc.email,
              builder: (context, snapshot){
                return TextFormField(
                  onChanged: _registerBloc.changeEmail,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'usuario@hotmail.com',
                    labelText: 'Mail',
                    errorText: snapshot.error,
                  ),
              );},)),

          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
            child:StreamBuilder(
              stream: _registerBloc.password,
              builder: (context, snapshot){
                return TextFormField(
                  obscureText: true,
                  onChanged: _registerBloc.changePassword,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: '***********',
                    labelText: 'Contraseña',
                    errorText: snapshot.error,
                  ),
              );},)),

          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
            child:StreamBuilder(
              stream: _registerBloc.password2,
              builder: (context, snapshot){
                return TextFormField(
                  obscureText: true,
                  onChanged: _registerBloc.changePasswordRepeated,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: '***********',
                    labelText: 'Repetir contraseña',
                    errorText: snapshot.error,
                  ),
              );},)),

        StreamBuilder(
          stream: _registerBloc.submitRegister,
          builder: (context, snapshot){
            return RaisedButton(
            color: Colors.blue,
            onPressed: snapshot.hasData ? ()=>submit() : null , //boton inhabilitado hasta que snapsho.hasData == true
          child: Text('Enviar Registro'),
          );}),

        ]);  
        /*RaisedButton(
          color: Colors.blue,
          onPressed: () {
            if (_formKey.currentState.validate()) {
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('Registrando')));}},
        child: Text('Registrar'),),*/
  }

  void submit(){
	Navigator.pushNamed(context, 'home_page');
   /*  if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Iniciando Sesión')));} */
  }
}