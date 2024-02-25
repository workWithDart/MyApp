import 'package:flutter/material.dart';

class InventoryDetailsScreen1 extends StatelessWidget {
  final List<ProductInventory> productsInventory;

  InventoryDetailsScreen1({required this.productsInventory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'inventaire (Casiers et Bouteilles)'),
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
              ],
              rows: productsInventory.map((product) {
                return DataRow(
                  cells: [
                    DataCell(Text(product.productName)),
                    DataCell(Text(product.casiers.toString())),
                    DataCell(Text(product.bouteilles.toString())),
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

class ProductInventory {
  final String productName;
  final int casiers;
  final int bouteilles;

  ProductInventory({
    required this.productName,
    required this.casiers,
    required this.bouteilles,
  });
}
