import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Mahasiswa"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {"name": "Vivi Eka Juliatus Sholihah", "hobby": "Hobi Membaca", "image": "assets/vivi.jpg"},
    {"name": "Nanda Nabila Zudin", "hobby": "Hobi Menggambar", "image": "assets/nanda.jpeg"},
    {"name": "Elfira Dwi Purwati", "hobby": "Hobi Memasak", "image": "assets/elfira.jpeg"},
    {"name": "Andi Nugrogo", "hobby": "Hobi Bermain Musik", "image": "assets/andi.jpeg"},
    {"name": "Budi Septian", "hobby": "Hobi Olahraga", "image": "assets/budi.jpeg"},
    {"name": "Citra Maya sari", "hobby": "Hobi Menulis", "image": "assets/citra.jpeg"},
    {"name": "Diana Marisa", "hobby": "Hobi Menyanyi", "image": "assets/diana.jpeg"},
    {"name": "Eko Saputra", "hobby": "Hobi Fotografi", "image": "assets/eko.jpeg"},
    {"name": "Fani Febriyanti", "hobby": "Hobi Makan", "image": "assets/fani.jpeg"},
    {"name": "Gita Dwi Nurjannah", "hobby": "Hobi Belanja", "image": "assets/gita.jpeg"},
    // Add more data here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final person = data[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0), // Sudut siku
          ),
          child: ListTile(
            onTap: () {},
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(person["image"]), // Use person["image"] here
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(person["name"]),
            subtitle: Text(person["hobby"]),
            tileColor: Colors.white70,
          ),
        );
      },
    );
  }
}