import 'package:flutter/material.dart';
import 'package:flutter_app/characters_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> characters = [
    {
      'name': 'Beth Smith',
      'image': 'https://rickandmortyapi.com/api/character/avatar/4.jpeg',
      'gender': 'Female',
      'status': 'Alive',
      'species': 'Human',
      'origin': 'Earth (C-137)',
      'location': 'Earth (Replacement Dimension)'
    },
    {
      'name': 'Bill',
      'image': 'https://rickandmortyapi.com/api/character/avatar/9.jpeg',
      'gender': 'Male',
      'status': 'Dead',
      'species': 'Human',
      'origin': 'Earth (Replacement Dimension)',
      'location': 'Anatomy Park'
    },
    {
      'name': 'Conroy',
      'image': 'https://rickandmortyapi.com/api/character/avatar/10.jpeg',
      'gender': 'unknown',
      'status': 'Alive',
      'species': 'Human',
      'origin': 'Earth (C-137)',
      'location': 'Gazorpazorp'
    },
    {
      'name': 'Cronenberg Rick',
      'image': 'https://rickandmortyapi.com/api/character/avatar/8.jpeg',
      'gender': 'Male',
      'status': 'Dead',
      'species': 'Cronenberg',
      'origin': 'Cronenberg Earth',
      'location': 'Earth (C-137)'
    },
    {
      'name': 'Evil Jerry Clone',
      'image': 'https://rickandmortyapi.com/api/character/avatar/7.jpeg',
      'gender': 'Male',
      'status': 'unknown',
      'species': 'Clone',
      'origin': 'Earth (C-137)',
      'location': 'Citadel of Ricks'
    },
    // Add more characters as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('images/rickmorty.png', height: 200, width: 200),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Horizontal list of buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Earth (C-137)'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Abadango'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Citadel of Ricks'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Gazorpazorp'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Planet Squanch'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          // Vertical list of character cards
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: characters.map((character) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterDetailPage(
                            name: character['name']!,
                            image: character['image']!,
                            status: character['status']!,
                            species: character['species']!,
                            gender: character['gender']!,
                            origin: character['origin']!,
                            location: character['location']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.network(character['image']!, height: 100, width: 100),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(character['name']!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                Icon(
                                  character['gender'] == 'Male' ? Icons.male :
                                  character['gender'] == 'Female' ? Icons.female : Icons.help,
                                  size: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
