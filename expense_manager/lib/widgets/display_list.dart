import 'package:flutter/material.dart';
import './transactionCard.dart';
import '../models/expense_model.dart';
import './inputTransactions.dart';

class DisplayList extends StatefulWidget {
  DisplayList({Key key}) : super(key: key);

  @override
  _DisplayListState createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayList> {
  final List<Expenses> userTransactions = [
    Expenses(id: 't1', title: 'Nike Shoes', amount: 5000, date: DateTime.now()),
    Expenses(
        id: 't1',
        title: 'iPhone 11 Pro Max',
        amount: 99000,
        date: DateTime.now()),
    Expenses(id: 't1', title: 'iPad Pro', amount: 75000, date: DateTime.now()),
  ];

  void _addnewTransaction(String title, double amount) {
    if (title=="" || amount <= 0 || amount.isNaN) {
      print('Null Values not Allowed');
    } else {
      final newTx = Expenses(
          id: 't1', title: title, amount: amount, date: DateTime.now());
      setState(() {
        userTransactions.add(newTx);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputTransactions(_addnewTransaction),
          TransactionCards(userTransactions),
        ],
      ),
    );
  }
}
