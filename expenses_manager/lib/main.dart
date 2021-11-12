import 'package:flutter/material.dart';

import './transaction.dart';
import './transactionWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Manager',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 1,
      amount: 99,
      title: "buying shirt",
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      amount: 25,
      title: "Electricity Bill",
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses Manager'),
      ),
      body: Column(
        children: [
          Card(
            child: Text("Chart"),
          ),
          TransactionWidget(transaction),
        ],
      ),
    );
  }
}
