import 'package:flutter/material.dart';

class AnalyzeScreen extends StatelessWidget {
  const AnalyzeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Analyse de Séance',
          style: TextStyle(color: Colors.white), // Title color set to white
        ),
        backgroundColor: Colors.deepPurpleAccent,
        iconTheme:
            const IconThemeData(color: Colors.white), // Icon color set to white
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Résumé de la séance
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Résumé de la Séance',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dans cette séance de soft skills, on a travaillé sur l’importance de l’analyse, '
                      'de la communication et de la logique. On a aussi appris comment valoriser ses compétences, '
                      'faire une recherche d’emploi et se préparer pour des entretiens. En devoir, on doit explorer '
                      'par nous-mêmes des outils de résolution de problèmes comme “Planifier, Faire, Vérifier, Agir”. '
                      'Ces étapes nous aideront plus tard pour bien analyser et améliorer des situations.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // New list of skills with icons and style
              _buildSkill(
                context,
                'Esprit analytique',
                'Décomposer un problème en éléments essentiels pour mieux le comprendre.',
                Icons.search,
                Colors.deepOrangeAccent,
              ),
              _buildSkill(
                context,
                'Esprit synthétique',
                'Assembler des idées pour en tirer des conclusions globales.',
                Icons.merge_type,
                Colors.tealAccent,
              ),
              _buildSkill(
                context,
                'Esprit logique',
                'Utiliser la logique pour évaluer les solutions et les décisions.',
                Icons.linear_scale,
                Colors.blueAccent,
              ),
              _buildSkill(
                context,
                'Esprit de communication',
                'Transmettre les idées clairement et efficacement.',
                Icons.forum,
                Colors.pinkAccent,
              ),
              _buildSkill(
                context,
                'Esprit d’optimisation',
                'Améliorer les processus pour obtenir les meilleurs résultats.',
                Icons.trending_up,
                Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for each skill with a coherent style
  Widget _buildSkill(BuildContext context, String title, String description,
      IconData icon, Color color) {
    return Card(
      color: color.withOpacity(0.8),
      elevation: 6,
      shadowColor: color.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
