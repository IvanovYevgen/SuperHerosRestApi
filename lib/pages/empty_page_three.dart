import 'package:flutter/material.dart';

class EmptyPageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Порожня сторінка номер 3'),
          centerTitle: true,
        ),
        body: Container(
            child: Image.network(
                'https://images.unsplash.com/photo-1557985594-29f3ad9f5134?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')));
  }
}
