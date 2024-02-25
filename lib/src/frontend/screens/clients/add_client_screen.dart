import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/constants/breakpoint.dart';
import 'package:my_app/src/frontend/constants/size_constants.dart';

class AddClientScreen extends StatefulWidget {
  @override
  _AddClientScreenState createState() => _AddClientScreenState();
}

class _AddClientScreenState extends State<AddClientScreen> {
  // Définissez vos variables pour stocker les données du nouveau client
  String clientName = '';
  String clientAddress = '';
  String clientContact = '';

  // Ajoutez d'autres variables et méthodes selon vos besoins

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Enregistrement du Nouveau Client'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations du Nouveau Client',
              style: TextStyle(fontSize: screenWidth > Breakpoint.desktop ? 30 : 20, fontWeight: FontWeight.bold),
            ),

            vspace20,

            // Champ de formulaire pour le nom du client
            TextFormField(
              decoration: InputDecoration(labelText: 'Nom du Client'),
              onChanged: (value) {
                setState(() {
                  clientName = value;
                });
              },
            ),

            vspace20,

            // Champ de formulaire pour l'adresse du client
            TextFormField(
              decoration: InputDecoration(labelText: 'Adresse du Client'),
              onChanged: (value) {
                setState(() {
                  clientAddress = value;
                });
              },
            ),

            vspace20,

            // Champ de formulaire pour le contact du client
            TextFormField(
              decoration: InputDecoration(labelText: 'Contact du Client'),
              onChanged: (value) {
                setState(() {
                  clientContact = value;
                });
              },
            ),

            vspace20,

            ElevatedButton(
              onPressed: () {
                // Logique pour enregistrer le nouveau client
                // Utilisez les valeurs de clientName, clientAddress, clientContact
              },
              child: Text('Enregistrer le Nouveau Client'),
            ),
          ],
        ),
      ),
    );
  }
}
