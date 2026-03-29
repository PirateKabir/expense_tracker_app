import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  String text;
  double width;
  PrimaryButton({super.key, required this.text, this.width = 180});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.5,
            color: AppColors.lightonSecondaryFixed,
          ),
        ),
      ),
    );
  }
}
