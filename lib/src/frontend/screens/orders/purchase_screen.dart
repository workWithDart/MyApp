import 'package:flutter/material.dart';

class PurchaseScreen extends StatefulWidget {
  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  // Champs de contrôle pour saisir les informations
  TextEditingController dateController = TextEditingController();
  TextEditingController immatriculationController = TextEditingController();
  TextEditingController chauffeurController = TextEditingController();
  TextEditingController typeAchatController = TextEditingController();
  TextEditingController nombreC12Controller = TextEditingController();
  TextEditingController nombreC20Controller = TextEditingController();
  TextEditingController nombreC24Controller = TextEditingController();
  TextEditingController montantTTCController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saisie d\'achat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ajoutez des champs de saisie pour chaque information
            TextFormField(
              controller: dateController,
              decoration: InputDecoration(labelText: 'Date d\'arrivée'),
            ),
            TextFormField(
              controller: immatriculationController,
              decoration: InputDecoration(labelText: 'Immatriculation du camion'),
            ),
            TextFormField(
              controller: chauffeurController,
              decoration: InputDecoration(labelText: 'Nom du chauffeur'),
            ),
            TextFormField(
              controller: typeAchatController,
              decoration: InputDecoration(labelText: 'Type d\'achat'),
            ),
            TextFormField(
              controller: nombreC12Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nombre C12'),
            ),
            TextFormField(
              controller: nombreC20Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nombre C20'),
            ),
            TextFormField(
              controller: nombreC24Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nombre C24'),
            ),
            TextFormField(
              controller: montantTTCController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Montant TTC'),
            ),
        
            SizedBox(height: 20),
        
            ElevatedButton(
              onPressed: () {
                // Récupérez les valeurs saisies
                String date = dateController.text;
                String immatriculation = immatriculationController.text;
                String chauffeur = chauffeurController.text;
                String typeAchat = typeAchatController.text;
                int nombreC12 = int.tryParse(nombreC12Controller.text) ?? 0;
                int nombreC20 = int.tryParse(nombreC20Controller.text) ?? 0;
                int nombreC24 = int.tryParse(nombreC24Controller.text) ?? 0;
                double montantTTC = double.tryParse(montantTTCController.text) ?? 0.0;
        
                // Utilisez ces valeurs selon vos besoins
                print('Date d\'arrivée: $date');
                print('Immatriculation du camion: $immatriculation');
                print('Nom du chauffeur: $chauffeur');
                print('Type d\'achat: $typeAchat');
                print('Nombre C12: $nombreC12');
                print('Nombre C20: $nombreC20');
                print('Nombre C24: $nombreC24');
                print('Montant TTC: $montantTTC');
              },
              child: Text('Enregistrer l\'achat'),
            ),
          ],
        ),
      ),
    );
  }
}
