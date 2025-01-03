import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>> [
  { 'elevation': 0.0, 'label': "Elevation 0"},
  { 'elevation': 1.0, 'label': "Elevation 1"},
  { 'elevation': 2.0, 'label': "Elevation 2"},
  { 'elevation': 3.0, 'label': "Elevation 3"},
  { 'elevation': 4.0, 'label': "Elevation 4"},
  { 'elevation': 5.0, 'label': "Elevation 5"}
  
];


class CardsScreen extends StatelessWidget {
  static const String name='cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView()
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map ( (card) => _CardsType1(label: card['label'], elevation: card['elevation'])),
          ...cards.map ( (card) => _CardsType2(label: card['label'], elevation: card['elevation']))
        ],
      ),
    );
  }
}

class _CardsType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardsType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,5,10,10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                  
                },
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label)
            )
          ],
        ),
      ),
    );
  }
}

class _CardsType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardsType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors =  Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
        )
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,5,10,10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                  
                },
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outlined')
            )
          ],
        ),
      ),
    );
  }
}
