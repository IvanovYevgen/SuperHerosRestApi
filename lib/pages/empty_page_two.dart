import 'package:flutter/material.dart';

class EmptyPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Порожня сторінка номер 2'),
          centerTitle: true,
        ),
        body: Container(
            child: Image.network(
                'https://images.unsplash.com/photo-1558679908-541bcf1249ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')));
  }
}
