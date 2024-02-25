class Packaging {
  String clientName;
  DateTime date;
  int c12Quantity;
  int c20Quantity;
  int c24Quantity;

  Packaging({
    required this.clientName,
    required this.date,
    required this.c12Quantity,
    required this.c20Quantity,
    required this.c24Quantity,
  });

  // Méthode pour calculer le solde des emballages
  Map<String, int> calculateBalance() {
    return {
      'C12': c12Quantity,
      'C20': c20Quantity,
      'C24': c24Quantity,
    };
  }

  // Méthode pour afficher les détails de l'emballage
  void displayDetails() {
    print('Client: $clientName');
    print('Date: $date');
    print('Quantité C12: $c12Quantity');
    print('Quantité C20: $c20Quantity');
    print('Quantité C24: $c24Quantity');
  }
}
