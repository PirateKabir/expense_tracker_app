import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.more_vert, size: 32)],
                  ),
                  SizedBox(height: 80),
                  Text("Home", style: Theme.of(context).textTheme.labelLarge),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
