import 'package:flutter/material.dart';

void main() => runApp(const AppZoologico());

class AppZoologico extends StatelessWidget {
  const AppZoologico({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosCuidadores(),
    );
  }
}

class LosCuidadores extends StatelessWidget {
  const LosCuidadores({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de URLs de imágenes
    final List<String> imagenesAnimales = [
      'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/cuidador1.jpg', 
      'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/cuidador2.jpg', 
      'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/cuidador3.jpg', 
      'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/cuidador4.jpg', 
    ];

    // Lista de nombres de cuidadores
    final List<String> nombresCuidadores = [
      'Juan Pérez',
      'María García',
      'Carlos Ruiz',
      'Ana Martínez',
    ];

    // Lista de información detallada diferente para cada uno
    final List<String> infoDetallada = [
      'Especialista en felinos y grandes mamíferos.',
      'Encargada del área de aves exóticas y nutrición.',
      'Experto en reptiles y mantenimiento de terrarios.',
      'Veterinaria dedicada al rescate de fauna silvestre.',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Zoologico el Vaquera',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFFFF9C4),
        leading: const Icon(Icons.directions_car, color: Colors.black),
        actions: [
          // Iconos relacionados a un zoológico
          IconButton(
            icon: const Icon(Icons.pets, color: Color.fromARGB(255, 0, 0, 0)), // Huella/Pata
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.cruelty_free, color: Color.fromARGB(255, 5, 0, 0)), // Animal/Mascota
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.map, color: Color.fromARGB(255, 0, 0, 0)), // Mapa del zoo
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: imagenesAnimales.length, 
        itemBuilder: (context, i) {
          return Card(
            color: const Color(0xFFE1BEE7),
            elevation: 6,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage(imagenesAnimales[i]),
              ),
              title: Text(
                'Cuidador de animales ${nombresCuidadores[i]}',
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                infoDetallada[i],
                style: const TextStyle(color: Colors.black87),
              ),
              trailing: const Icon(Icons.thumb_up, color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}