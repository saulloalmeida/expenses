import 'package:flutter/material.dart';

class TransactionChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Card(
        color: Colors.blueAccent[100],
        elevation: 5,
        child: Text(
          "Gráfico",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
