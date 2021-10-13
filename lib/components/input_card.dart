import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  const InputCard({Key? key, this.color, this.childCard}) : super(key: key);

  final Color? color;
  final Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: childCard,
    );
  }
}
