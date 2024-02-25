import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/screens/stock/inventory_details_screen.dart';

class InventoryDetailsScreen2 extends StatelessWidget {
  final List<ProductInventory> productsInventory;

  InventoryDetailsScreen2({required this.productsInventory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'inventaire (Quantités et Montants)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DataTable(
              columns: [
                DataColumn(label: Text('Type de Produit')),
                DataColumn(label: Text('Nombre de Casiers')),
                DataColumn(label: Text('Nombre de Bouteilles')),
                DataColumn(label: Text('Montant Total')),
              ],
              rows: productsInventory.map((product) {
                return DataRow(
                  cells: [
                    DataCell(Text(product.productName)),
                    DataCell(Text(product.casiers.toString())),
                    DataCell(Text(product.bouteilles.toString())),
                    DataCell(Text((product.casiers + product.bouteilles).toString())),
                  ],
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour imprimer les détails
                print('Impression des détails de l\'inventaire');
              },
              child: Text('Imprimer'),
            ),
          ],
        ),
      ),
    );
  }
}
