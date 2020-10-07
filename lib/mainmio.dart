import 'package:flutter/material.dart';
import 'package:rastreo/views/rutanueva.dart';
import 'package:rastreo/views/rutavieja.dart';
import 'package:rastreo/views/contactos.dart';
import 'package:rastreo/views/login.dart';
import 'package:rastreo/views/registro.dart';
import 'package:rastreo/views/rutas.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'rutanueva',
      routes: {
        'login' : (BuildContext context) => Login(),
        'contactos' : (BuildContext context) => Contactos(),
        'registro' : (BuildContext context) => Registro(),
        'rutas' : (BuildContext context) => Rutas(),
        'rutavieja': (BuildContext context) => Rutavieja('Ruta X'),
        'rutanueva': (BuildContext context) => Rutanueva(),
      },
    );
  }
}


