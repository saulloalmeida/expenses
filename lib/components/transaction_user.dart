import 'package:expenses/components/transaction_chart.dart';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
    final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tenis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 2211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Cerveja',
      value: 25.0,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TransactionChart(),
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}