import 'package:expense_tracker_app/views/widgets/scaffold_skeleton.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldSkeleton(
      text: "Transactions",
      icon1: "info",
      icon2: "i",
      back: false,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text("April"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text("April"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text("April"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text("April"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text("April"),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.black, thickness: 2),
            ],
          ),
        ],
      ),
    );
  }
}
