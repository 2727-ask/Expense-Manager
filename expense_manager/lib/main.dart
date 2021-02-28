//import './widgets/expense_list.dart';
import 'package:expense_manager/widgets/display_list.dart';

import './widgets/inputTransactions.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Manager'),
        ),
        body: SingleChildScrollView(
                  child: Container(
            child:Column(
              children: [
                DisplayList(),
              ],
            )
            
            
          ),
        ),
      ),
    );
  }
}