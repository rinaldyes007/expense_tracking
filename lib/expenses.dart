import 'package:expense_tracking/expenses_list.dart';
import 'package:expense_tracking/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
      category: Category.work,
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.leisure,
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(
            child: ExpensesList(expenses: _registerExpenses),
          )
        ],
      ),
    );
  }
}
