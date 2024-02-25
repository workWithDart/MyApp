import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/products/product.dart';
//import 'package:my_app/src/frontend/models/inventory/inventory_entry.dart';
import 'package:my_app/src/frontend/models/stock/inventory_entry.dart';

class InventoryEntryForm extends StatefulWidget {
  @override
  _InventoryEntryFormState createState() => _InventoryEntryFormState();
}

class _InventoryEntryFormState extends State<InventoryEntryForm> {
  Product? selectedProduct; // Vous devez remplacer cela par la logique pour sélectionner un produit
  int numberOfCases = 0;
  int numberOfBottles = 0;
  DateTime selectedDate = DateTime.now(); // Initialisez à la date actuelle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saisie d\'inventaire'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Interface utilisateur pour sélectionner un produit
            DropdownButtonFormField<Product>(
              value: selectedProduct,
              onChanged: (Product? newValue) {
                setState(() {
                  selectedProduct = newValue!;
                });
              },
              items: getProductDropdownItems(), // Vous devez implémenter cette fonction
              decoration: InputDecoration(labelText: 'Produit'),
            ),

            // Interface utilisateur pour saisir le nombre de casiers
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  numberOfCases = int.tryParse(value) ?? 0;
                });
              },
              decoration: InputDecoration(labelText: 'Nombre de casiers'),
            ),

            // Interface utilisateur pour saisir le nombre de bouteilles
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  numberOfBottles = int.tryParse(value) ?? 0;
                });
              },
              decoration: InputDecoration(labelText: 'Nombre de bouteilles'),
            ),

            // Interface utilisateur pour sélectionner la date
            ListTile(
              title: Text('Date de saisie'),
              subtitle: Text(
                "${selectedDate.toLocal()}".split(' ')[0],
              ),
              trailing: Icon(Icons.calendar_today),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null && pickedDate != selectedDate) {
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }
              },
            ),

            // Bouton pour enregistrer l'inventaire
            ElevatedButton(
              onPressed: () {
                // Continuation du code...
                // Créez un nouvel objet InventoryEntry en utilisant les données saisies
                // ignore: unused_local_variable
                InventoryEntry newEntry = InventoryEntry(
                  product: selectedProduct,
                  numberOfCases: numberOfCases,
                  numberOfBottles: numberOfBottles,
                  entryDate: selectedDate,
                );

                // Enregistrez l'entrée dans votre système (peut-être dans une liste ou une base de données)
                // ...

                // Affichez un message de confirmation ou redirigez l'utilisateur
                // ...
              },
              child: Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<Product>> getProductDropdownItems() {
    // Implémentez la logique pour obtenir la liste des produits
    // Créez des DropdownMenuItem pour chaque produit
    // Retournez la liste des DropdownMenuItem
    // Exemple :
    List<Product> productList = []; // Remplacez cela par votre liste de produits réelle
    return productList.map((product) {
      return DropdownMenuItem<Product>(
        value: product,
        child: Text(product.name),
      );
    }).toList();
  }
}
