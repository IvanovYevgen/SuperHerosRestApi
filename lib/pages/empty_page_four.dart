import 'package:flutter/material.dart';

class EmptyPageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Порожня сторінка номер 4'),
          centerTitle: true,
        ),
        body: Container(
            child: Image.network(
                'https://images.unsplash.com/photo-1586413771383-7f2e83b958f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')));
  }
}
