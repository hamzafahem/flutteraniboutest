import 'package:flutter/material.dart';
import 'package:anibou_flutter/Form.dart'; // Assurez-vous que ce fichier existe

// La classe MyApp est le point d'entrée de l'application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/registre": (context) => RegistrationForm(), // Route d'inscription
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MenuPage(), // Page d'accueil avec le menu
    );
  }
}

// Page Menu avec Drawer
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Menu'),
      ),
      // Le Drawer qui contient les options de menu
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // En-tête du menu avec une image et le nom
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://www.example.com/your-image.jpg'), // Remplacez par l'URL ou le chemin local de l'image
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hamza',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'hamzafahel@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            // Section "Classification d'images" dans le Drawer
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Classification d\'images'),
              onTap: () {
                // Ouvrir un sous-menu pour "ANN" et "CNN"
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Choisir un modèle'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.album),
                            title: const Text('ANN'),
                            onTap: () {
                              // Naviguer vers la page ANN
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AnnPage()),
                              );
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.campaign),
                            title: const Text('CNN'),
                            onTap: () {
                              // Naviguer vers la page CNN
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CnnPage()),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            // Autres options du menu
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Réglages'),
              onTap: () {
                // Naviguer vers une page de réglages (exemple)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Déconnexion'),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationForm()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Bienvenue dans la page principale !'),
      ),
    );
  }
}

// Page de classification ANN
class AnnPage extends StatelessWidget {
  const AnnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ANN')),
      body: const Center(
        child: Text('Page de classification ANN'),
      ),
    );
  }
}

// Page de classification CNN
class CnnPage extends StatelessWidget {
  const CnnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CNN')),
      body: const Center(
        child: Text('Page de classification CNN'),
      ),
    );
  }
}

// Page des réglages (exemple de page liée au menu)
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LLM')),
      body: const Center(
        child: Text('LLM'),
      ),
    );
  }
}
// Page des réglages (exemple de page liée au menu)
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RAG')),
      body: const Center(
        child: Text('LLM'),
      ),
    );
  }
}


void main() {
  runApp(const MyApp());
}
