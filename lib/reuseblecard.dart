import 'package:flutter/material.dart';

class reuseblecard extends StatelessWidget {
  final Color kolor;
  final Widget cardchild;
  reuseblecard({required this.kolor, required this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: kolor),
    );
  }
}
