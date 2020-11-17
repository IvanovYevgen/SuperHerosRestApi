import 'package:flutter/material.dart';

class TextMaker extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String text;
  final double fontsize;
  final FontWeight fontWeight;

  const TextMaker({
    Key key,
    @required this.padding,
    @required this.text,
    @required this.fontsize,
    @required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(text,
          style: TextStyle(fontSize: fontsize, fontWeight: fontWeight)),
    );
  }
}
