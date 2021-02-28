//Expenses Input Data Schema model/Constructor*

import 'package:flutter/foundation.dart';

class Expenses {
   final String id;
   final String title;
   final double amount;
   final DateTime date;

  Expenses({
    @required this.id, 
    @required this.title, 
    @required this.amount, 
    @required this.date
  });
}
