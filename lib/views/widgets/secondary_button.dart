import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondaryButton extends StatelessWidget {
  String Icon;
  String text;
  double width;
  SecondaryButton({
    super.key,
    required this.Icon,
    required this.text,
    this.width = 260,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primaryContainer,
        border: Border.all(width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/$Icon.svg", height: 30),
            SizedBox(width: 10),
            Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
