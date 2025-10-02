import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart'; //Εισαγωγή του Intl για σωστο format του date

final formatter = DateFormat.yMd(); //Δημιουργία αντικειμένου
const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work
}

const categoryIcons = {
  Category.food: Icons.restaurant,
  Category.leisure: Icons.sports_esports,
  Category.travel: Icons.airplanemode_active,
  Category.work: Icons.work
};

class  Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //Το v4 αρχικοποιει το id μοναδικα κάθε φορά που χρησιμοποιειται ο constructor

  String get formattedDate => formatter.format(date); //formatted ημερομηνια. Γυρναει String
}

class ExpenseBucket{
  const ExpenseBucket({
    required this.category,
    required this.expenses
  });

// Φιλτράρει τα Expenses ανα κατηγορια. Συγκεκριμένα επιστρέφει ένα expense
// απο το allExpenses οποτε (where) το expense.category == category που ψαχνουμε
  ExpenseBucket.forCategory(
    List<Expense> allExpenses,
    this.category
  ) : expenses = allExpenses.where((
    expense) => expense.category == category).toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses{
    double sum = 0;

    for (final item in expenses){
      sum += item.amount;
    }

    return sum;
  }
}