import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
    final titleController = TextEditingController();
    final valueController = TextEditingController();
    final void Function(String, double) onSubmit;
    TransactionForm(this.onSubmit);
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(labelText: 'Título'),
                  ),
                  TextField(
                    controller: valueController,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.purple,
                        textColor: Colors.white,
                        onPressed: () {
                          final title = titleController.text;
                          final value = double.tryParse(valueController.text) ?? 0.00;
                          onSubmit(title, value);
                        },
                        child: Text("Nova Transação"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}