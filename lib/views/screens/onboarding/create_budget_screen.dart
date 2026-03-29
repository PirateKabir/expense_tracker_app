import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:expense_tracker_app/views/widgets/budget_text_field.dart';
import 'package:expense_tracker_app/views/widgets/change_screen_box.dart';
import 'package:expense_tracker_app/views/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class CreateBudgetScreen extends StatelessWidget {
  const CreateBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/budget_screen_img.jpg",
                      height: height * 0.26,
                    ),
                    SizedBox(height: 22),
                    Text(
                      "Create a budget",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 60, child: BudgetTextField()),
                        SizedBox(width: 10),
                        SizedBox(width: 60, child: BudgetTextField()),
                        SizedBox(width: 10),
                        SizedBox(width: 100, child: BudgetTextField()),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "beginning",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        SizedBox(width: 15),
                        SizedBox(width: 110, child: BudgetTextField()),
                      ],
                    ),
                    SizedBox(height: 40),
                    PrimaryButton(text: "Change Currency"),
                    SizedBox(height: 20),
                    Text(
                      "You can always edit this later.",
                      style: TextStyle(color: AppColors.lightonSecondaryFixed),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChangeScreenBox(icon: Icons.arrow_back),
                  ChangeScreenBox(icon: Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
