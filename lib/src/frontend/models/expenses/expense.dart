import 'package:my_app/src/frontend/models/expenses/expense_category.dart';

class Expense {
  final ExpenseCategory category;
  final String label;
  final double amount; // Ajout du montant des dépenses

  Expense({required this.category, required this.label, required this.amount});
}
