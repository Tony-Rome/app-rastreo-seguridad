import 'package:flutter/material.dart';
import 'package:rastreo/views/home.dart';
import 'package:rastreo/views/map.dart';
import 'package:rastreo/views/profile.dart';
import 'package:rastreo/views/settings.dart';
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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Contactos(),

      initialRoute: 'registro',
      routes: {
        'home_page' : (BuildContext context) => HomePage(), 
        'profile_page' : (BuildContext context) => ProfilePage(),
        'map_page' : (BuildContext context) => MapPage(),
        'settings_page' : (BuildContext context) => SettingsPage(),
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