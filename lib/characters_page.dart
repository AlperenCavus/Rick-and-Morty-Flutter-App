import 'package:flutter/material.dart';

class CharacterDetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String status;
  final String species;
  final String gender;
  final String origin;
  final String location;

  const CharacterDetailPage({
    required this.name,
    required this.image,
    required this.status,
    required this.species,
    required this.gender,
    required this.origin,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(image),
            SizedBox(height: 16.0),
            Text('Status: $status', style: TextStyle(fontSize: 20)),
            Text('Species: $species', style: TextStyle(fontSize: 20)),
            Text('Gender: $gender', style: TextStyle(fontSize: 20)),
            Text('Origin: $origin', style: TextStyle(fontSize: 20)),
            Text('Location: $location', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
