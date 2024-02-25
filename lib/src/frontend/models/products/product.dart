// La classe Product représente les propriétés d'un produit
class Product {
  final int id;
  late final String name;
  late final String type;
  late final String category;
  late final double price;
  late final int stockQuantity;
  //final int soldQuantity;
  late final String packaging; // Décommentez cette ligne si nécessaire
  late final String size; // Décommentez cette ligne si nécessaire

  // Ce constructeur est utilisé pour créer une instance de Product
  Product( {
    required this.id,
    this.name='',
    required this.type,
    required this.category,
    this.price=0.0,
    required this.stockQuantity,
   // required this.soldQuantity,
    required this.packaging, // Décommentez cette ligne si nécessaire
     required this.size, // Décommentez cette ligne si nécessaire
  });

  // La méthode fromJson permet de créer une instance de Product à partir d'un objet JSON.
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      stockQuantity: json['stockQuantity'] as int,
      //soldQuantity: json['soldQuantity'] as int,
      packaging: json['packaging'] as String,
       size: json['size'] as String,
    );
  }

  // La méthode toJson convertit une instance de Product en un objet JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'category': category,
      'price': price,
      'stockQuantity': stockQuantity,
      'packaging': packaging,
       'size': size,
    };
  }
}

// // La classe BeerProduct est une sous-classe de Product pour les bières. Elle possède les propriétés spécifiques
// // comme volume et packaging
// class BeerProduct extends Product {
//   final String volume;
//   final String packaging;

//   BeerProduct({
//     required int id,
//     required String name,
//     required String category,
//     required double price,
//     required int stockQuantity,
//     required this.volume,
//     required this.packaging,
//   }) : super(
//           id: id,
//           name: name,
//           category: category,
//           price: price,
//           stockQuantity: stockQuantity,
//         );

//   // La méthode fromJson permet de créer une instance de BeerProduct à partir d'un objet JSON.
//   factory BeerProduct.fromJson(Map<String, dynamic> json) {
//     return BeerProduct(
//       id: json['id'] as int,
//       name: json['name'] as String,
//       category: json['category'] as String,
//       price: (json['price'] as num).toDouble(),
//       stockQuantity: json['stockQuantity'] as int,
//       volume: json['volume'] as String,
//       packaging: json['packaging'] as String,
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     return super.toJson()..addAll({'volume': volume, 'packaging': packaging});
//   }
// }

// // La classe SoftDrinkProduct est une sous-classe de Product pour les boissons gazeuses. Elle possède les propriétés
// // spécifiques comme flavor et packaging
// class SoftDrinkProduct extends Product {
//   final String flavor;
//   final String packaging;

//   SoftDrinkProduct({
//     required int id,
//     required String name,
//     required String category,
//     required double price,
//     required int stockQuantity,
//     required this.flavor,
//     required this.packaging,
//   }) : super(
//           id: id,
//           name: name,
//           category: category,
//           price: price,
//           stockQuantity: stockQuantity,
//         );

//   // La méthode fromJson permet de créer une instance de SoftDrinkProduct à partir d'un objet JSON.
//   factory SoftDrinkProduct.fromJson(Map<String, dynamic> json) {
//     return SoftDrinkProduct(
//       id: json['id'] as int,
//       name: json['name'] as String,
//       category: json['category'] as String,
//       price: (json['price'] as num).toDouble(),
//       stockQuantity: json['stockQuantity'] as int,
//       flavor: json['flavor'] as String,
//       packaging: json['packaging'] as String,
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     return super.toJson()..addAll({'flavor': flavor, 'packaging': packaging});
//   }
// }
