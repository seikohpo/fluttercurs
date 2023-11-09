import 'package:flutter/material.dart';
import 'package:primera_app/people_list.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //final randomNames = RandomNames(Zone.us); // Eliminar aquesta línea
    return MaterialApp(
      title: 'Generadors de Noms de Personas',
        theme: ThemeData(
        // ignore: deprecated_member_use
        ),
      home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.red,
          title: const Text('Generadors de Noms de Personas'),
        ),
            body: const Center(child: PeopleList())
          //body: Center(child: Text(randomNames.fullName())), // Modifica el body
        //body: const Center(child: Text('Hola món!')),
      ),
    );
  }
}