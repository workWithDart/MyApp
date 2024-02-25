import 'package:my_app/src/frontend/models/products/product.dart';

class InventoryEntry {
  final Product? product;
  final int numberOfCases;
  final int numberOfBottles;
  final DateTime entryDate;

  InventoryEntry({
    required this.product,
    required this.numberOfCases,
    required this.numberOfBottles,
    required this.entryDate,
  });
}
