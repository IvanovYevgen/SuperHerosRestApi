import 'package:flutter/material.dart';

class EmptyPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Порожня сторінка номер 1'),
          centerTitle: true,
        ),
        body: Container(
            child: Image.network(
                'https://images.unsplash.com/photo-1561149877-84d268ba65b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')));
  }
}
