import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Outils de Résolution de Problèmes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Outils de Résolution de Problèmes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            _buildTool('Planifier', 'Définir le problème et les objectifs.',
                Icons.flag, Colors.deepOrangeAccent),
            _buildTool('Faire', 'Exécuter les actions planifiées.',
                Icons.play_arrow, Colors.tealAccent),
            _buildTool('Vérifier', 'Suivre et évaluer les résultats.',
                Icons.check_circle, Colors.blueAccent),
            _buildTool('Agir', 'Apporter les ajustements nécessaires.',
                Icons.autorenew, Colors.pinkAccent),
          ],
        ),
      ),
    );
  }

  Widget _buildTool(
      String title, String description, IconData icon, Color color) {
    return Card(
      color: Colors.white,
      elevation: 6,
      shadowColor: color.withOpacity(0.4),
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, size: 40, color: color),
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
