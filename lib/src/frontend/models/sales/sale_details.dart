
import 'package:my_app/src/frontend/models/clients/client.dart';

class SaleDetails {
  final int saleId;
  final DateTime saleDate;
  final String clientName;
  final List<ProductDetails> productDetailsList;
  final int soldQuantity;
  final double totalAmount;

  SaleDetails({
    required this.saleId,
    required this.saleDate,
    required this.clientName,
    required this.productDetailsList,
    required this.soldQuantity,
    required this.totalAmount,
  });

  // Méthode pour convertir un objet SaleDetails en un map JSON
  Map<String, dynamic> toJson() {
    return {
      'saleId': saleId,
      'saleDate': saleDate.toIso8601String(),
      'clientName': clientName,
      'productDetailsList': productDetailsList.map((productDetails) => productDetails.toJson()).toList(),
      'soldQuantity': soldQuantity,
      'totalAmount': totalAmount,
    };
  }

  // Méthode pour créer une instance de SaleDetails à partir d'un map JSON
  factory SaleDetails.fromJson(Map<String, dynamic> json) {
    return SaleDetails(
      saleId: json['saleId'],
      saleDate: DateTime.parse(json['saleDate']),
      clientName: json['clientName'],
      productDetailsList: (json['productDetailsList'] as List).map((productJson) => ProductDetails(productJson)).toList(),
      soldQuantity: json['soldQuantity'],
      totalAmount: json['totalAmount'],
    );
  }
}
