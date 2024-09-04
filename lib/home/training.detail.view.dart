import 'package:flutter/material.dart';

class TrainigDetailView extends StatelessWidget {
  final String title;
  final String description;

  const TrainigDetailView(
      {super.key, required this.title, required this.description});

// ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(description),
            const SizedBox(height: 20),
            _exerciseList()
          ],
        ),
      ),
    );
  }

  Widget _exerciseList() {
//Aqui você pode add uma lista de exercicios ou treinos específios
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Exercícios',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _exerciseCard('Supino reto', '3 séries de 10 repetições'),
        _exerciseCard('Agachamento', '3 séries de 12 repetições'),
      ],
    );
  }

  Widget _exerciseCard(String title, String details) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.fitness_center),
        title: Text(title),
        subtitle: Text(details),
      ),
    );
  }
}
