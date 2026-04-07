import 'package:expense_tracker_app/viewmodels/create_budget_screen_vm.dart';
import 'package:expense_tracker_app/views/screens/onboarding/create_budget_screen.dart';
import 'package:expense_tracker_app/views/widgets/scaffold_skeleton.dart';
import 'package:flutter/material.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldSkeleton(
      icon2: "homepage_banner",
      text: "Budgets",
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Monthly Spending",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelLarge,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "\$228.04",
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                          ),
                                          Text(" overspent of \$500"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Mar 1"),
                              SizedBox(
                                height: 30,
                                width: 250,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Container(
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    FractionallySizedBox(
                                      widthFactor: 0.7,
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surfaceContainer,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        "${(0.7 * 100).toInt()}%",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text("Mar 31"),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "You can spend \$96.82/day for 14 more days",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
