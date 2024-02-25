import 'package:flutter/material.dart';

class DebtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Situation Créances/Dettes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Situation Créances/Dettes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Ajoutez ici des widgets pour afficher la situation des créances/dettes
            // Utilisez des listes déroulantes, des champs de formulaire, etc.

            // Exemple d'une liste déroulante simple
            DropdownButton<String>(
              items: ['Client 1', 'Client 2', 'Client 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (selectedClient) {
                // Mettez à jour l'affichage en fonction du client sélectionné
              },
              hint: Text('Sélectionnez un client'),
            ),

            // Exemple d'un champ de formulaire
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Montant',
                // Ajoutez d'autres propriétés de décoration au besoin
              ),
              keyboardType: TextInputType.number,
              onChanged: (amount) {
                // Mettez à jour l'affichage en fonction du montant saisi
              },
            ),

            // Autres widgets personnalisés en fonction de vos besoins

          ],
        ),
      ),
    );
  }
}
