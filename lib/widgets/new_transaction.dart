import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final purchaseNameInput = TextEditingController();
  final purchaseAmountInput = TextEditingController();

  //Gets the add transaction method and imports it for use in this class
  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    /*
      Test Builds a new transaction widget that gets text data from user
      The PurchaseName section takes in a string and uses a controller to get 
      the input and convert it
      The PurchaseAmount section takes a string input and uses the TextInputType
      to use a number keyboard and then passes on a double value
      The Add transaction section uses a RaisedButton that calls the addTransaction
      function which is sent to the user_transaction.dart file 
    */
    return Container(
      width: 450,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: <Widget>[
          //PurchaseName Section
          TextField(
            decoration: InputDecoration(labelText: 'Purchase Name'),
            controller: purchaseNameInput,
          ),
          //PurchaseAmount Section
          TextField(
            decoration: InputDecoration(labelText: 'Purchase Amount'),
            controller: purchaseAmountInput,
            keyboardType: TextInputType.number,
          ),
          //AddTransaction Section
          RaisedButton(
            child: Text('Add Transaction'),
            color: Colors.white,
            textColor: Colors.green,
            onPressed: () {
              addTransaction(purchaseNameInput.text,
                  double.parse(purchaseAmountInput.text));
            },
          ),
        ],
      ),
    );
  }
}
