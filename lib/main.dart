import 'package:expense_app/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './models/transaction.dart';

void main() {
  runApp(ExpenseApp());
}

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: 'Expense App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
            /*
              Chart Widget
            */
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text(
                    'Chart!',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              /* User Transaction Widget */
              UserTransaction()
            ]));
  }
}
