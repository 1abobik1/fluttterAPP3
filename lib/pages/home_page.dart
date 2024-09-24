import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/item_note.dart';
import 'package:flutter_application_3/models/note.dart';

final List<Note> notes = <Note>[
  Note(
    id: 1,
    photo_id: 'assets/photo/16PM.jpg',
    title: 'BMW X5',
    description: 'ЧТО-ТО ПРО БМВ',
    price: '4 500 000 руб.',
  ),
  Note(
    id: 2,
    photo_id: 'assets/photo/15PM.jpg',
    title: 'BMW X3',
    description: 'ЧТО-ТО ПРО БМВ',
    price: '3 600 000 руб.',
  ),
  Note(
    id: 3,
    photo_id: 'assets/photo/13.jpg',
    title: 'BMW X1',
    description: "ЧТО-ТО ПРО БМВ",
    price: 'от 3 280 000 руб.',
  ),
  Note(
    id: 4,
    photo_id: 'assets/photo/15.jpg',
    title: 'BMW X2',
    description: 'ЧТО-ТО ПРО БМВ',
    price: 'от 3 500 000 руб.',
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Магазин BMW')),
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return ItemNote(notes: notes[index]);
            }));
  }
}
