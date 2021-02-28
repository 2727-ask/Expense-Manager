import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/display_list.dart';
import '../models/expense_model.dart';

class TransactionCards extends StatelessWidget {
  final List<Expenses> userTransactions;
  TransactionCards(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: userTransactions.map((tx) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                )),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  tx.amount.toString(),
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(tx.title,style: TextStyle(fontSize: 20),),
              Text(DateFormat().format(tx.date),style: TextStyle(fontSize: 15,color: Colors.grey),),
            ]
          )
        ],
      ),
    );
        }).toList()),
      );
  }
}
