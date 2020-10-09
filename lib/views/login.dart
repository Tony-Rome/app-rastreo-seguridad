import 'package:flutter/material.dart';
import 'package:rastreo/bloc/bloc_login.dart';

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

class FormLogin extends StatelessWidget { 

  final _loginBloc = LoginBloc(); 

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[

          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
          child:StreamBuilder(
            stream: _loginBloc.email,
            builder: (context, snapshot){
              return TextFormField(
                onChanged: _loginBloc.changeEmail,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'usuario@hotmail.com',
                  labelText: 'Mail',
                  errorText: snapshot.error,
                ),
            );},)),

          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal:50), 
            child:StreamBuilder(
            stream:  _loginBloc.password,
            builder: (context, snapshot){
              return TextFormField(
                obscureText: true,
                onChanged: _loginBloc.changePassword,
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: '***********',
                  labelText: 'Contraseña',
                  errorText: snapshot.error
                ),
              );})),

        StreamBuilder(
          stream: _loginBloc.submitLogin,
          builder: (context, snapshot){
            return RaisedButton(
            color: Colors.blue,
            onPressed: snapshot.hasData ? ()=>submit(context) : null , //boton inhabilitado hasta que snapsho.hasData == true
          child: Text('Iniciar Sesión'),
          );}),

        ]);
  }

  // ======= FUNCIONES ==========
  void submit(BuildContext context){
	Navigator.pushNamed(context, 'home_page');
   
  }

  
}
