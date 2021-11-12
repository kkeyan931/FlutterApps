import 'package:flutter/material.dart';
import './transaction.dart';

class TransactionWidget extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionWidget(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction.map((tx) {
        return Container(
          child: Container(
            width: double.infinity,
            child: Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      tx.amount.toString(),
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                      ),
                    ),
                    padding: EdgeInsets.all(5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tx.title.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        tx.date.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              elevation: 5,
            ),
          ),
        );
      }).toList(),
    );
  }
}
