import 'package:flutter/material.dart';

class CustomCard {
  static BoxDecoration shadow() => BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            spreadRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      );
}
