import 'package:flutter/material.dart';

import 'products/product.dart';

class Sale {
  final DateTime date;
  final String clientName;
  final List<Product> products; // Liste des produits vendus avec quantités
  final double totalAmount; // Montant total de la vente

  Sale({
    required this.date,
    required this.clientName,
    required this.products,
    required this.totalAmount,
  });

  // Méthode pour calculer le montant total de la vente (quantité vendue)
  double calculateTotalAmount() {
    double total = 0;
    for (var product in products) {
      total += product.price *
          product
              .soldQuantity; // Utiliser soldQuantity au lieu de stockQuantity
    }
    return total;
  }

  // Méthode pour afficher les détails de la vente
  void displaySaleDetails() {
    debugPrint('Date de la vente: ${date.toLocal()}');

    debugPrint('Client: $clientName');
    print('Produits vendus:');
    for (var product in products) {
      print(
          '${product.name} - Quantité vendue: ${product.soldQuantity} - Prix unitaire: ${product.price} FCFA');
    }
    print('Montant total: $totalAmount FCFA');
  }
}

class SaleDetails {
  final int saleId;
  final DateTime date;
  final String clientName;
  final List<ProductDetails> productDetailsList;
  final double totalAmountToPay;

  SaleDetails({
    required this.saleId,
    required this.date,
    required this.clientName,
    required this.productDetailsList,
    required this.totalAmountToPay,
  });
}

class ProductDetails {
  final String productCode;
  final String designation;
  final double unitPrice;
  final double amount;

  ProductDetails({
    required this.productCode,
    required this.designation,
    required this.unitPrice,
    required this.amount,
  });
}
