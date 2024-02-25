import 'package:my_app/src/frontend/models/clients/packaging_transaction.dart';
import 'package:my_app/src/frontend/models/orders/order.dart';
import 'package:my_app/src/frontend/models/payment.dart';
import 'package:my_app/src/frontend/models/products/product.dart';

class Client {
  String name;
  DateTime registrationDate;
  double balance;
  List<Order> orderHistory;
  List<Payment> paymentHistory;
  List<Purchase> purchaseHistory;
  List<Return> returnHistory;
  final List<PackagingTransaction> packagingTransactions;
  Client({
    required this.name,
    required this.registrationDate,
    this.balance = 0.0,
    this.orderHistory = const [],
    this.paymentHistory = const [],
    this.purchaseHistory = const [],
    this.returnHistory = const [],
    required this.packagingTransactions
  });
}

// class Order {
//   DateTime date;
//   List<ProductDetails> products;

//   Order({
//     required this.date,
//     required this.products,
//   });
// }

// class Payment {
//   DateTime date;
//   double amount;

//   Payment({
//     required this.date,
//     required this.amount,
//   });
// }

class Purchase {
  DateTime date;
  List<ProductDetails> products;

  Purchase({
    required this.date,
    required this.products,
  });
}

class Return {
  DateTime date;
  List<ProductDetails> returnedProducts;

  Return({
    required this.date,
    required this.returnedProducts,
  });
}

class ProductDetails {
  Product product;
  int quantity;

  ProductDetails({
    required this.product,
    required this.quantity,
  });

  toJson() {}

  static fromJson(productJson) {}
}
