import 'package:flutter/material.dart';

class ChangeScreenBox extends StatelessWidget {
  final IconData icon;
  const ChangeScreenBox({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child: Center(child: Icon(icon, size: 38)),
    );
  }
}
