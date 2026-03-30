import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxButton extends StatelessWidget {
  String text;
  String icon;
  BoxButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 105,
        width: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primaryContainer,
          border: Border.all(width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/$icon.svg", height: 29),
            SizedBox(height: 10),
            Text(text, style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
