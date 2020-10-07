import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  List<String> _routs = ['Selecciona tu ruta','Ruta 1', 'Ruta 2', 'Ruta 3'];
  String _routsSelected = 'Selecciona tu ruta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _routsSelected,
                    onChanged:  (String newRout){
                      setState((){
                        _routsSelected = newRout;
                      });
                    }, 
                    items:_routs.map<DropdownMenuItem<String>>((rout) {
                      return DropdownMenuItem<String>(
                        child: Text(rout),
                        value: rout
                        );
                    }).toList(),
                  )
                ), 
                 Container(
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
                          child: Text('Activar ruta'),
                      ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 150.0,
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
                          child: Text('Contactos'),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 150.0,
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
                          child: Text('Mapa'),
                      ),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 150.0,
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
                          child: Text('Rutas'),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30.0),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: 150.0,
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
                          child: Text('Ajustes'),
                      ),
                  ),
                  ],
                ),
              ],),
          ),
        )
        )
    );
  }
}
