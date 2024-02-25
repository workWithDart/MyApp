import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/expenses/expense.dart';
import 'package:my_app/src/frontend/models/expenses/expense_category.dart';

class ExpenseEntryScreen extends StatefulWidget {
  final ExpenseCategory selectedCategory;

  ExpenseEntryScreen({required this.selectedCategory});

  @override
  _ExpenseEntryScreenState createState() => _ExpenseEntryScreenState();
}

class _ExpenseEntryScreenState extends State<ExpenseEntryScreen> {
  late TextEditingController labelController;
  late TextEditingController amountController; // Contrôleur pour le montant des dépenses

  @override
  void initState() {
    super.initState();
    labelController = TextEditingController();
    amountController = TextEditingController(); // Initialisation du contrôleur du montant
  }

  @override
  void dispose() {
    labelController.dispose();
    amountController.dispose(); // Disposition du contrôleur du montant
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saisie de la Dépense'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rubrique: ${widget.selectedCategory.categoryName}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: labelController,
              decoration: InputDecoration(labelText: 'Libellé de la Dépense'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number, // Clavier numérique pour le montant
              decoration: InputDecoration(labelText: 'Montant des Dépenses'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Enregistrez la dépense avec la catégorie, le libellé et le montant
                Expense newExpense = Expense(
                  category: widget.selectedCategory,
                  label: labelController.text,
                  amount: double.parse(amountController.text), // Convertir le montant en double
                );

                // Vous pouvez maintenant traiter la dépense comme vous le souhaitez (stocker, afficher, etc.)
                print('Nouvelle Dépense: ${newExpense.label} (${newExpense.category.categoryName}), Montant: ${newExpense.amount}');

                // Retournez à l'écran précédent
                Navigator.pop(context);
              },
              child: Text('Enregistrer la Dépense'),
            ),
          ],
        ),
      ),
    );
  }
}
