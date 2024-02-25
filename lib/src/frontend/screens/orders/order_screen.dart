import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/screens/orders/evaluate_order_screen.dart';
import 'package:my_app/src/frontend/screens/orders/purchase_screen.dart';




class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COMMANDES'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contenu de votre nouvel écran'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PurchaseScreen(),
                ));
              },
              child: Text('Saisie de achats'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EvaluateOrderScreen(),
                ));
              },
              child: Text('Commandes Client'),
            ),
          ],
        ),
      ),
    );
  }
}
