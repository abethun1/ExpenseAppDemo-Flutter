import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final double cost;
  final DateTime date;

//Makes a Transaction object and requires the class variables
  Transaction(
      {required this.id,
      required this.title,
      required this.cost,
      required this.date});

//Method that gets the month from the date variable in the class
  String month() {
    if (this.date.month == 1)
      return "January";
    else if (this.date.month == 2)
      return "Febuary";
    else if (this.date.month == 3)
      return "March";
    else if (this.date.month == 4)
      return "April";
    else if (this.date.month == 5)
      return "May";
    else if (this.date.month == 6)
      return "June";
    else if (this.date.month == 7)
      return "July";
    else if (this.date.month == 8)
      return "August";
    else if (this.date.month == 9)
      return "September";
    else if (this.date.month == 10)
      return "October";
    else if (this.date.month == 11)
      return "November";
    else
      return "December";
  }
}
