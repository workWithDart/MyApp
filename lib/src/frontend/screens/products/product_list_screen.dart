// import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/products/product.dart';
import 'package:my_app/src/frontend/screens/products/add_product_screen.dart';
import 'package:my_app/src/frontend/screens/products/edit_product_screen.dart';

class ProductListScreen extends StatefulWidget {
  
  
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [
     Product(
  id: 1,
  name: 'AWOOYO',
  type: 'Grand modèle',
  category: 'Bière',
  packaging: 'C12',
  stockQuantity: 10,
  price: 6700,
  size: '65cl'
),

 Product(
  id: 2,
  name: 'CASTEL',
  category: 'Bière',
  type: 'Grand modèle',
  packaging: 'C20',
  stockQuantity: 5,
  price:7691,
  size : '50cl'
 // platformViewRegistry: 5.49,
),

Product(
  id: 3,
  name: 'CHILL',
  category: 'Boissons gazeuses',
  type: 'Grand modèle',
  packaging: 'C20',
  stockQuantity: 5,
  price:7656,
  size : '50cl'
 // platformViewRegistry: 5.49,
),

Product(
  id: 3,
  name: 'CHILL POMME',
  category: 'Boissons gazeuses',
  type: 'Grand modèle',
  packaging: 'C20',
  stockQuantity: 5,
  price:7580,
  size : '50cl'
 // platformViewRegistry: 5.49,
),

Product(
  id: 3,
  name: 'COCKTAIL',
  category: 'Boissons gazeuses',
  type: 'Grand modèle',
  packaging: 'C20',
  stockQuantity: 5,
  price:7656,
  size : '50cl'
 // platformViewRegistry: 5.49,
),

Product(
  id: 3,
  name: 'CHILL',
  category: 'Boissons gazeuses',
  type: 'Grand modèle',
  packaging: 'C20',
  stockQuantity: 5,
  price:7656,
  size : '50cl'
 // platformViewRegistry: 5.49,
)

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Produits avec Prix DiPi'),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(productList[index].name),
              subtitle: Text('Prix: ${productList[index].price} FCFA'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Naviguez vers l'écran d'édition du produit
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EditProductScreen(product: productList[index]),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Ajoutez la logique pour supprimer le produit
                      setState(() {
                        productList.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Naviguez vers l'écran d'ajout de produit
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// class Product {
//   final int id;
//   final String name;
//   final double price;

//   Product({required this.id, required this.name, required this.price});
// }

// class AddProductScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ajouter un Produit'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Nom du Produit'),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(labelText: 'Prix du Produit'),
//               keyboardType: TextInputType.number,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Ajoutez la logique pour enregistrer le nouveau produit
//                 // Utilisez un gestionnaire de gestion de l'état ou une fonction dans votre modèle
//                 Navigator.pop(context); // Revenir à l'écran précédent
//               },
//               child: Text('Enregistrer'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EditProductScreen extends StatelessWidget {
//   final Product product;

//   EditProductScreen({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Modifier le Produit'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Nom du Produit'),
//               controller: TextEditingController(text: product.name),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(labelText: 'Prix du Produit'),
//               keyboardType: TextInputType.number,
//               controller: TextEditingController(text: product.price.toString()),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Ajoutez la logique pour enregistrer les modifications du produit
//                 // Utilisez un gestionnaire de gestion de l'état ou une fonction dans votre modèle
//                 Navigator.pop(context); // Revenir à l'écran précédent
//               },
//               child: Text('Enregistrer les Modifications'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
