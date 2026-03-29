import 'package:flutter/material.dart';

class BudgetTextField extends StatelessWidget {
  const BudgetTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC0C0C0)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC0C0C0)),
        ),
      ),
    );
  }
}
