import 'package:expense_tracker/widgets/charts/chart.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter', amount: 15, date: DateTime.now(), category: Category.food),
    Expense(title: 'Flutter', amount: 15, date: DateTime.now(), category: Category.food),
    Expense(title: 'Flutter', amount: 15, date: DateTime.now(), category: Category.food),
    Expense(title: 'Flutter', amount: 15, date: DateTime.now(), category: Category.food),
  ];

  void _addExpenses() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(addExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removerExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text("Expense deleted"),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: (){
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          } ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text("No expenses found. Start adding some!"),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removerExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker", style: Theme.of(context).textTheme.titleMedium,),
        actions: [IconButton(
          onPressed: _addExpenses,
          icon: Icon(Icons.add),
          color: Colors.white,)],
      ),
      body: Column(
        children: [
         Chart(expenses: _registeredExpenses),
          Expanded(child: mainContent)],
      ),
    );
  }
}
