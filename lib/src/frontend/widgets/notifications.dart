import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<String> notifications = [
    'Nouvelle commande reçue.',
    'Le stock est faible pour le produit X.',
    'Facture client #1234 générée avec succès.',
    // Ajoutez d'autres notifications selon vos besoins.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notifications[index]),
            // Ajoutez des actions ou des détails supplémentaires ici si nécessaire.
          );
        },
      ),
    );
  }
}
