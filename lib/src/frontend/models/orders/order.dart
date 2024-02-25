// import 'product.dart';

import 'package:my_app/src/frontend/models/products/product.dart';

class Order {
  int id;
  List<OrderItem> items;
  double totalAmount;
  DateTime orderDate;

  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.orderDate,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    List<dynamic> itemsList = json['items'];
    List<OrderItem> orderItems =
        itemsList.map((item) => OrderItem.fromJson(item)).toList();

    return Order(
      id: json['id'] as int,
      items: orderItems,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      orderDate: DateTime.parse(json['orderDate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> itemsList =
        items.map((item) => item.toJson()).toList();

    return {
      'id': id,
      'items': itemsList,
      'totalAmount': totalAmount,
      'orderDate': orderDate.toIso8601String(),
    };
  }
}

class OrderItem {
  Product product;
  int quantity;

  OrderItem({
    required this.product,
    required this.quantity,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      product: Product.fromJson(json['product']),
      quantity: json['quantity'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product.toJson(),
      'quantity': quantity,
    };
  }
}
