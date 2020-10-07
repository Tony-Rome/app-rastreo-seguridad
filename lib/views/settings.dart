import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Ajustes'),),
      body: SafeArea(
        child: Container(
          width: mediaWidth * 1,
          height: mediaHeight * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              voiceButton(),
              vibrationButton(),
              profileButton(),
              logoutButton(),
            ],),
        ),
      ),
      
    );
  }

    Widget voiceButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child: RaisedButton(
                        //disabledColor: Colors.black, color desabilitado
                          elevation: 5.0,      
                          onPressed: (){},
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.red,
                          child: Text('Voz'),
                      ),
                  );
  }

    Widget vibrationButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child: RaisedButton(
                        //disabledColor: Colors.black, color desabilitado
                          elevation: 5.0,      
                          onPressed: (){},
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.red,
                          child: Text('Vibración'),
                      ),
                  );
  }

    Widget profileButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child: RaisedButton(
                        //disabledColor: Colors.black, color desabilitado
                          elevation: 5.0,      
                          onPressed: () => Navigator.pushNamed(context, 'profile_page'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.red,
                          child: Text('Perfíl usuario'),
                      ),
                  );
  }

    Widget logoutButton(){
    return Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 200.0,
                    child: RaisedButton(
                        //disabledColor: Colors.black, color desabilitado
                          elevation: 5.0,      
                          onPressed: (){},
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.red,
                          child: Text('Cerrar sesión'),
                      ),
                  );
  }
}