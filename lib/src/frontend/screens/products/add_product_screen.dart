import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/constants/color_constants.dart';
import 'package:my_app/src/frontend/models/products/product.dart';
import 'package:provider/provider.dart';

class AddProductScreen extends StatelessWidget {
  final TextEditingController productIdController = TextEditingController();
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productTypeController = TextEditingController();
  final TextEditingController productCategoryController = TextEditingController();
  final TextEditingController productPackagingController = TextEditingController();
  final TextEditingController stockQuantityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController productSizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appBarColor,
        title: Text('Ajouter un Produit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.defaultBackgroundColor,
                  labelText: 'Identifiant du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Type du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Catégorie du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Conditionnement du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Quantité en stock du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prix du Produit',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Format du Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 // Récupérez le gestionnaire d'état ProductManager
          ProductManager productManager = Provider.of<ProductManager>(context, listen: false);

          // Créez une nouvelle instance de Product avec les valeurs des champs de formulaire
          
          Product newProduct = Product(
            id: int.parse(productIdController.text),
            name: productNameController.text,
            type: productTypeController.text,
            category: productCategoryController.text,
            packaging: productPackagingController.text,
            stockQuantity: int.parse(stockQuantityController.text),
            price: double.parse(priceController.text),
            size: productSizeController.text,
          );

          // Ajoutez le nouveau produit au gestionnaire d'état
          productManager.addProduct(newProduct);

                  Navigator.pop(context); // Revenir à l'écran précédent
                },
                child: Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class ProductManager extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void updateProduct(Product updatedProduct) {
    final index = _products.indexWhere((product) => product.id == updatedProduct.id);
    if (index != -1) {
      _products[index] = updatedProduct;
      notifyListeners();
    }
  }
}

