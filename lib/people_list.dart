import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[]; // Nou
  final _biggerFont = const TextStyle(fontSize: 18); // Nou
  final _randomNames = RandomNames(Zone.us); // Nou

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
    //We add 10 more names
          for (var i=0; i<10; i++) {
            _suggestions.add(_randomNames.fullName());
          }
        }
        return ListTile(
          title: Text(
            _suggestions[index],
            style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w600,
              fontSize: 22,

            ),


          ),
        );
      },
    );
  }
}