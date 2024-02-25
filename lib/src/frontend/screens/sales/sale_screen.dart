import 'package:flutter/material.dart';

class SaleScreen extends StatefulWidget {
  @override
  _SaleScreenState createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  // Champs de contrôle pour saisir les informations
  TextEditingController selectedClientController = TextEditingController();
  TextEditingController selectedProductController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController transportFeeController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController amountToPayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saisie de Vente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Liste déroulante pour sélectionner le client
            DropdownButton<String>(
              hint: Text('Sélectionnez le Client'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedClientController.text = newValue!;
                });
              },
              items: <String>['Client 1', 'Client 2', 'Client 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Liste déroulante pour sélectionner le produit
            DropdownButton<String>(
              hint: Text('Sélectionnez le Produit'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedProductController.text = newValue!;
                  // Vous pouvez mettre à jour les autres champs automatiquement
                  // en fonction des propriétés du produit sélectionné
                });
              },
              items: <String>['Produit A', 'Produit B', 'Produit C']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Champ de formulaire pour la quantité
            TextFormField(
              controller: quantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Quantité'),
              onChanged: (value) {
                // Mettez à jour la valeur ou le montant à payer automatiquement
                // en fonction de la quantité et d'autres propriétés
                updateAmountToPay();
              },
            ),

            SizedBox(height: 20),

            // Champ de formulaire pour les frais de transport
            TextFormField(
              controller: transportFeeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Frais de Transport'),
              onChanged: (value) {
                // Mettez à jour la valeur ou le montant à payer automatiquement
                // en fonction des frais de transport et d'autres propriétés
                updateAmountToPay();
              },
            ),

            SizedBox(height: 20),

            // Champ de formulaire pour la remise
            TextFormField(
              controller: discountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Remise'),
              onChanged: (value) {
                // Mettez à jour la valeur ou le montant à payer automatiquement
                // en fonction de la remise et d'autres propriétés
                updateAmountToPay();
              },
            ),

            SizedBox(height: 20),

            // Champ de texte pour afficher la valeur ou le montant à payer
            TextFormField(
              controller: amountToPayController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Montant à Payer'),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Logique pour enregistrer la vente
                // Utilisez les valeurs des champs de contrôle
                print('Client: ${selectedClientController.text}');
                print('Produit: ${selectedProductController.text}');
                print('Quantité: ${quantityController.text}');
                print('Frais de Transport: ${transportFeeController.text}');
                print('Remise: ${discountController.text}');
                print('Montant à Payer: ${amountToPayController.text}');
              },
              child: Text('Enregistrer la Vente'),
            ),
          ],
        ),
      ),
    );
  }

  // Méthode pour mettre à jour la valeur ou le montant à payer automatiquement
  void updateAmountToPay() {
    // Logique pour calculer la valeur ou le montant à payer
    // en fonction de la quantité, des frais de transport, de la remise, etc.
    // Mettez à jour le champ de contrôle amountToPayController.text
  }
}
