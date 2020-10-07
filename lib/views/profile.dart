import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
 Widget build(BuildContext context) {
    
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Perfíl usuario'),),
      body: SafeArea(
        child: Container(
          width: mediaWidth * 1,
          height: mediaHeight * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailButton(),
              oldPasswordButton(),
              newPasswordButton(),
              passwordRepeatButton(),
            ],),
        ),
      ),
      
    );
  }

    Widget emailButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Email',
                      ),
                    ),
                  );
  }

  Widget oldPasswordButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child:TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Contraseña antigua',
                        hintText: 'Contraseña antigua',
                      ),
                    ),
                  );
  }

    Widget newPasswordButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child:TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Contraseña nueva',
                        hintText: 'Contraseña nueva',
                      ),
                    ),
                  );
  }

    Widget passwordRepeatButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child:TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Repetir contraseña nueva',
                        hintText: 'Repetir contraseña nueva',
                      ),
                    ),
                  );
  }
}