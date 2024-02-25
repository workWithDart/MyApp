class Payment {
  String clientName;
  DateTime date;
  double amount;
  String paymentMethod; // Ajout d'un champ pour le mode de paiement

  Payment({
    required this.clientName,
    required this.date,
    required this.amount,
    required this.paymentMethod,
  });

  // Méthode pour afficher les détails du paiement
  void displayDetails() {
    print('Client: $clientName');
    print('Date: $date');
    print('Montant: $amount');
    print('Mode de paiement: $paymentMethod');
  }

  // Méthode pour effectuer le paiement
  void makePayment() {
    // Implémentez la logique pour effectuer le paiement ici
    print('Paiement de $amount effectué avec succès.');
  }

  // Méthode pour générer un reçu
  String generateReceipt() {
    // Implémentez la logique pour générer un reçu ici
    return 'Reçu de paiement pour $clientName - Montant: $amount';
  }
}
