import 'package:flutter/material.dart';

class DeconnexionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Déconnexion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Êtes-vous sûr de vouloir vous déconnecter ?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique de déconnexion
                // Vous pouvez utiliser Navigator pour revenir à l'écran de connexion
                Navigator.pop(context);
              },
              child: Text('Déconnexion'),
            ),
          ],
        ),
      ),
    );
  }
}
