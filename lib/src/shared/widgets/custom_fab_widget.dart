import 'package:flutter/material.dart';

import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';

class CustomFAB extends StatelessWidget {
  CustomFAB({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function () onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        width: 56.0,
        height: 56.0,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradient,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: Offset(0.0, 1.0),
              blurRadius: 18.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.14),
              offset: Offset(0.0, 6.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0.0, 3),
                blurRadius: 5.0,
                spreadRadius: -1.0),
          ],
        ),
        child: Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
