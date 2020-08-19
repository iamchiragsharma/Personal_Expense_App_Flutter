import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transactions_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'New Shoes',
      amount: 3200.05,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Veggies',
      amount: 222,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'New Shoes',
      amount: 3200.05,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Veggies',
      amount: 222,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'New Shoes',
      amount: 3200.05,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Veggies',
      amount: 222,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Chics',
      amount: 1640,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
