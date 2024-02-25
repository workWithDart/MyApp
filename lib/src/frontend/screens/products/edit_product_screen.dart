// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/products/product.dart';


class EditProductScreen extends StatefulWidget {
  final Product product;

  EditProductScreen({required this.product});

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  late TextEditingController productNameController;
  late TextEditingController priceController;
  late TextEditingController productCategoryController;
  late TextEditingController productTypeController;
  late TextEditingController productPackagingController;
  late TextEditingController stockQuantityController;
  late TextEditingController productSizeController;
  

  @override
  void initState() {
    super.initState();
    productNameController = TextEditingController(text: widget.product.name);
    priceController = TextEditingController(text: widget.product.price.toString());
   productCategoryController = TextEditingController(text: widget.product.category);
   productTypeController = TextEditingController(text: widget.product.type);
   productPackagingController = TextEditingController(text: widget.product.packaging);
   stockQuantityController = TextEditingController(text: widget.product.stockQuantity.toString());
   productSizeController = TextEditingController(text: widget.product.size);
    
  }

  void updateProduct(int productId, String newName, double newPrice, String newCategory, String newType, String newPackaging, int newStockQuantity, String newSize) {
    // Recherchez le produit à mettre à jour dans la liste
    List<Product>? productList;
    Product? productToUpdate = productList?.firstWhere((product) => product.id == productId, orElse: () => null);

    // Vérifiez si le produit a été trouvé
    if (productToUpdate != null) {
      // Mettez à jour les propriétés du produit avec les nouvelles valeurs
      productToUpdate.name = newName;
      productToUpdate.price = newPrice;
      productToUpdate.category = newCategory;
      productToUpdate.type = newType;
      productToUpdate.packaging = newPackaging;
      productToUpdate.stockQuantity = newStockQuantity;
      productToUpdate.size = newSize;

      // Affichez un message pour confirmer la mise à jour
      print('Produit mis à jour avec succès : ${productToUpdate.name}');
    } else {
      // Le produit n'a pas été trouvé
      print('Erreur : Produit non trouvé avec l\'ID $productId');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modifier le produit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: productNameController,
              decoration: InputDecoration(labelText: 'Nom du produit'),
            ),
            TextField(
              controller: productCategoryController,
              decoration: InputDecoration(labelText: 'Catégorie du produit'),
            ),
            TextField(
              controller: productTypeController,
              decoration: InputDecoration(labelText: 'Type de produit'),
            ),
            TextField(
              controller: productPackagingController,
              decoration: InputDecoration(labelText: 'Emballage du produit'),
            ),
             TextField(
              controller: stockQuantityController,
              decoration: InputDecoration(labelText: 'Quantité en stock '),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Prix du produit'),
            ),
            TextField(
              controller: productSizeController,
              decoration: InputDecoration(labelText: 'Volume du produit'),
            ),
            

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Appeler la fonction de mise à jour du produit
                updateProduct(
                 
                );

                // Revenir à l'écran précédent
                Navigator.pop(context);
              },
              child: Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}
