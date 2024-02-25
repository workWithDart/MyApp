class ProductDetails {
  final String productCode;
  final String productName;
  final double unitPrice;
  final int quantity;
  final double totalAmount;

  ProductDetails({
    required this.productCode,
    required this.productName,
    required this.unitPrice,
    required this.quantity,
    required this.totalAmount,
  });

  // Méthode pour convertir un objet ProductDetails en un map JSON
  Map<String, dynamic> toJson() {
    return {
      'productCode': productCode,
      'productName': productName,
      'unitPrice': unitPrice,
      'quantity': quantity,
      'totalAmount': totalAmount,
    };
  }

  // Méthode pour créer une instance de ProductDetails à partir d'un map JSON
  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    return ProductDetails(
      productCode: json['productCode'],
      productName: json['productName'],
      unitPrice: json['unitPrice'],
      quantity: json['quantity'],
      totalAmount: json['totalAmount'],
    );
  }
}
