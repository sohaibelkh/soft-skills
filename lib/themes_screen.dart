import 'package:flutter/material.dart';

class ThemesScreen extends StatelessWidget {
  final List<Map<String, String>> themes = [
    {
      'title': 'Épanouissement personnel',
      'description': 'Améliorer ses compétences personnelles.'
    },
    {
      'title': 'Acquisition de compétences',
      'description': 'Développer de nouvelles compétences pour le travail.'
    },
    {
      'title': 'Leadership et gestion',
      'description': 'Apprendre à diriger et inspirer une équipe.'
    },
    {
      'title': 'Collaboration en équipe',
      'description': 'Travailler efficacement avec les autres.'
    },
    {
      'title': 'Résolution de conflits',
      'description': 'Gérer les désaccords de manière constructive.'
    },
    {
      'title': 'Prise de décisions',
      'description': 'Faire des choix réfléchis et rapides.'
    },
    {
      'title': 'Créativité et innovation',
      'description': 'Encourager de nouvelles idées et solutions.'
    },
    {
      'title': 'Optimisation continue',
      'description': 'Améliorer les processus et la performance.'
    },
  ];

  ThemesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thèmes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.deepPurpleAccent, // Fond violet uniforme
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: themes
              .map((theme) =>
                  _buildThemeCard(theme['title']!, theme['description']!))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildThemeCard(String title, String description) {
    return Card(
      color: Colors.white,
      elevation: 6,
      shadowColor: Colors.black.withOpacity(0.2),
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.book, color: Colors.deepPurpleAccent),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
