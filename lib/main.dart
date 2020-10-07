import 'package:flutter/material.dart';
import 'package:rastreo/vistas/contactos.dart';
import 'package:rastreo/vistas/login.dart';
import 'package:rastreo/vistas/registro.dart';
import 'package:rastreo/vistas/rutanueva.dart';
import 'package:rastreo/vistas/rutas.dart';
import 'package:rastreo/vistas/rutavieja.dart';

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


