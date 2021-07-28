import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  //Sets up base default values for the transaction list
  final List<Transaction> userTransactions = [
    Transaction(
        id: 'T1', title: 'ATM Withdrawl', cost: 59.99, date: DateTime.now()),
    Transaction(
        id: 'T2', title: 'RPM Raceway', cost: 59.99, date: DateTime.now()),
  ];

  /*
    This method takes a purchaseName and purchaseAmount and makes a new transaction
    Then the setState method is used in a Stateful Widget in order to reload the section
    for the usertransaction section
  */
  void _addTransaction(String name, double amount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: name,
        cost: amount,
        date: DateTime.now());

    setState(() {
      userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /*
        New Transaction Widget
        */
        NewTransaction(_addTransaction),
        /*
        Transaction Widget
        */
        TransactionList(userTransactions),
      ],
    );
  }
}
