import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/products/product.dart';
import 'package:my_app/src/frontend/screens/products/add_product_screen.dart';
import 'package:my_app/src/frontend/screens/products/edit_product_screen.dart';
import 'package:my_app/src/frontend/screens/products/print_screen.dart';
import 'package:my_app/src/frontend/screens/products/product_list_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductIndicatorScreen extends StatefulWidget {
  @override
  _ProductIndicatorScreenState createState() => _ProductIndicatorScreenState();
}

class _ProductIndicatorScreenState extends State<ProductIndicatorScreen> {
  final PageController _controller = PageController();
  final List<Product> productList = [
    Product(
      id: 1,
      name: 'AWOOYO',
      type: 'Grand modèle',
      category: 'Bière',
      packaging: 'C12',
      stockQuantity: 10,
      price: 6700,
      size: '65cl',
    ),
    Product(
      id: 2,
      name: 'CASTEL',
      category: 'Bière',
      type: 'Grand modèle',
      packaging: 'C20',
      stockQuantity: 5,
      price: 7691,
      size: '50cl',
    ),
    // ... autres produits
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                AddProductScreen(),
                EditProductScreen(
                    product: productList.isNotEmpty ? productList[0] : null),
                ProductListScreen(),
                PrintScreen(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              jumpScale: 3,
            ),
          ),
        ],
      ),
    );
  }
}
