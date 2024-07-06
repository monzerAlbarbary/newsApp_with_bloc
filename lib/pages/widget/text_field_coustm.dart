import 'package:flutter/material.dart';

class TextFildCoustom extends StatelessWidget {
  TextFildCoustom({
    required this.hint,
    super.key,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: TextField(
        decoration:
            InputDecoration(border: UnderlineInputBorder(), hintText: hint),
      ),
    );
  }
}
