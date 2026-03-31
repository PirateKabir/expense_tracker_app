import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditHomeBox extends StatelessWidget {
  final String icon;
  final String text;
  EditHomeBox({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.all(13),
        constraints: BoxConstraints(minHeight: 70),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/$icon.svg",
                  height: 30,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                SizedBox(width: 13),
                Text(text, style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.more_vert,
                  size: 28,
                  color: Theme.of(context).colorScheme.onSecondaryFixed,
                ),
                SizedBox(width: 8),
                Switch(value: true, onChanged: (value) {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
