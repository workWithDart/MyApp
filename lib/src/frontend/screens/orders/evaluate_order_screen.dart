import 'package:flutter/material.dart';

class EvaluateOrderScreen extends StatefulWidget {
  @override
  _EvaluateOrderScreenState createState() => _EvaluateOrderScreenState();
}

class _EvaluateOrderScreenState extends State<EvaluateOrderScreen> {
  // Définissez vos variables pour stocker les données d'évaluation
  String? selectedClient ;
  String? selectedProduct ;
  int quantity = 0;

  // Ajoutez d'autres variables et méthodes selon vos besoins

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Évaluer la Commande'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Évaluation de la Commande avec Prix d\'Usine',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // Liste déroulante pour sélectionner le client
            DropdownButton<String>(
              value: selectedClient,
              hint: Text('Sélectionnez le Client'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedClient = newValue;
                });
              },
              items: <String>['Client 1', 'Client 2', 'Client 3']
                  .map<DropdownMenuItem<String>>((String? value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value ?? ''),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Liste déroulante pour sélectionner le produit
            DropdownButton<String>(
              value: selectedProduct,
              hint: Text('Sélectionnez le Produit'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedProduct = newValue;
                });
              },
              items: <String>['Produit A', 'Produit B', 'Produit C']
                  .map<DropdownMenuItem<String>>((String? value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value ?? ''),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Champ de formulaire pour la quantité
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Quantité'),
              onChanged: (value) {
                setState(() {
                  quantity = int.tryParse(value) ?? 0;
                });
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Logique pour envoyer l'évaluation
                // Utilisez les valeurs de selectedClient, selectedProduct, quantity
              },
              child: Text('Envoyer l\'Évaluation'),
            ),
          ],
        ),
      ),
    );
  }
}
