import 'package:flutter/material.dart';
import './display_list.dart';

class InputTransactions extends StatelessWidget {
  final Function addTx;
  final inputTitle = TextEditingController();
  final inputAmount = TextEditingController();
  

  
  
  InputTransactions(this.addTx);

  
  

  
  @override
  
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: TextField(
                     
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Transaction'),
                      controller:inputTitle,   
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: inputAmount,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Transaction Amount'),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      onPressed: () {
                        addTx(inputTitle.text,double.parse(inputAmount.text));
                      },
                      child: Text(
                        'Save Transaction',
                        style: TextStyle(color: Colors.purple,fontSize:15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
