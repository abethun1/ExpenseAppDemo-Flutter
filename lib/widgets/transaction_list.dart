import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    /*
  Build a transaction list widget to show all the transaction for the user
  Using a ListView.Builder it sets an blank context and uses the index variable
  to keep track of which transaction is loaded.
Each transaction is made by getting the transaction name and moving it
to the most left of the row in its own seperate colum from the amount.
Then the date is formateed to show only the month and day the transaction was
made and is placed in the same colum as the transaction name, right below the 
transaction name. Finally the amount is placed in the same row but to the 
farthest right of the container. All of the variables are recieved
from the transaction model and use interperloation to get their values
and set them in a singular string
  */
    return Container(
        width: double.infinity,
        height: 575,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          margin: EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Text(
                            transactions[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            '${transactions[index].month()} ${transactions[index].date.day}',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Text(
                      //The method toStringAsFixed is used to set 2 decimal places for the double
                      '\$${transactions[index].cost.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: transactions.length,
        ));
  }
}
