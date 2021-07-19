import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  const CardIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.black.withOpacity(0.54),
      size: 20,
    );
  }
}
