import 'package:flutter/material.dart';

class KeywordsScreen extends StatelessWidget {
  final List<String> keywords = [
    'Analyse',
    'Synthèse',
    'Logique',
    'Communication',
    'Optimisation',
    'Savoir-être',
    'Savoir-faire',
    'Résolution',
    'Planification',
    'Action',
    'Leadership',
    'Évaluation',
    'Entretien',
    'Collaboration',
    'Esprit logique'
  ];

  KeywordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mots Clés',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: keywords
                .asMap()
                .entries
                .map((entry) => _buildStyledKeyword(entry.key + 1, entry.value))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildStyledKeyword(int number, String keyword) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white, // Fond blanc pour chaque mot-clé
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            '$number. ', // Affiche le numéro avec un point
            style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              keyword,
              style: const TextStyle(
                color: Colors.deepPurpleAccent, // Texte violet
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
