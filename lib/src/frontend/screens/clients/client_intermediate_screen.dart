

// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/screens/clients/add_client_screen.dart';
import 'package:my_app/src/frontend/screens/clients/list_clients_screen.dart';
import 'package:my_app/src/frontend/screens/clients/packaging_situation_screen.dart';
import 'package:my_app/src/frontend/screens/clients/payment_screen.dart';
import 'package:my_app/src/frontend/constants/breakpoint.dart';

class ClientIntermediateScreen extends StatelessWidget {
  const ClientIntermediateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: screenWidth > Breakpoint.tablet ? 4 : 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          padding: EdgeInsets.all(10.0),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddClientScreen(),
                  ),
                );
              },
              child: Text('Ajouter Client'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListClientsScreen(),
                  ),
                );
              },
              child: Text('Liste des Clients'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigation vers PackagingSituationScreen
                var clients;
                if (clients != null && clients.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PackagingSituationScreen(
                        client: clients.first,
                      ),
                    ),
                  );
                } else {
                  // Afficher un message d'erreur ou désactiver l'élément du tiroir
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Erreur'),
                        content: Text('La liste des clients est vide.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Situation des Emballages'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                );
              },
              child: Text('Saisie des Règlements'),
            ),
          ],
        ),
      ),
    );
  }
}
