import 'package:flutter/material.dart';
import 'package:soft_skills/analyze_screen.dart';
import 'package:soft_skills/keywords_screen.dart';
import 'package:soft_skills/themes_screen.dart';
import 'package:soft_skills/tools_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100), // Espace sous la barre d'application

              // Section d'introduction stylée
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '🌟 Soft Skills',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Explorez des compétences essentielles pour booster votre adaptabilité, '
                      'votre esprit d’équipe et votre communication. Ces outils interactifs '
                      'sont là pour vous aider à grandir, tant sur le plan personnel que professionnel !',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Grille d'options avec un style amélioré
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildMenuItem(
                        context,
                        'Analyse de Séance',
                        Icons.analytics,
                        const AnalyzeScreen(),
                        Colors.deepOrangeAccent),
                    _buildMenuItem(context, 'Mots Clés', Icons.tag,
                        KeywordsScreen(), Colors.tealAccent),
                    _buildMenuItem(context, 'Thèmes', Icons.topic,
                        ThemesScreen(), Colors.blueAccent),
                    _buildMenuItem(context, 'Outils de Résolution', Icons.build,
                        ToolsScreen(), Colors.pinkAccent),
                  ],
                ),
              ),

              // Nom du développeur
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Developed by Sohaib el Khatab',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon,
      Widget screen, Color color) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => screen)),
      child: Card(
        color: color,
        elevation: 8,
        shadowColor: color.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
