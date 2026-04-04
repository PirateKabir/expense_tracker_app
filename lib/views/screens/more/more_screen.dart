import 'package:expense_tracker_app/views/widgets/box_button.dart';
import 'package:expense_tracker_app/views/widgets/button_with_subtitle.dart';
import 'package:expense_tracker_app/views/widgets/scaffold_skeleton.dart';
import 'package:expense_tracker_app/views/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldSkeleton(
      icon2: "homepage_banner",
      text: "More Actions",
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonWithSubtitle(
                  icon: "settings",
                  title: "Settings & Costumization",
                  subtitle: "Theme, Language, Import/Export CSV",
                ),
                ButtonWithSubtitle(
                  icon: "spending_summary",
                  title: "All Spending Summary",
                  subtitle: "Your spending statistics all in one place",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      SecondaryButton(
                        Icon: "info",
                        text: "About Cashew",
                        width: 203,
                      ),
                      SizedBox(width: 10),
                      SecondaryButton(
                        Icon: "feedback",
                        text: "Feedback",
                        width: 203,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      SecondaryButton(
                        Icon: "notifications",
                        text: "Notifications",
                        width: 203,
                      ),
                      SizedBox(width: 10),
                      SecondaryButton(
                        Icon: "google_icon",
                        text: "Login",
                        width: 203,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      SecondaryButton(
                        Icon: "calendar",
                        text: "Calendar",
                        width: 203,
                      ),
                      SizedBox(width: 10),
                      SecondaryButton(
                        Icon: "activity_log",
                        text: "Activity Log",
                        width: 203,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      SecondaryButton(
                        Icon: "subscription",
                        text: "Subscriptions",
                        width: 203,
                      ),
                      SizedBox(width: 10),
                      SecondaryButton(
                        Icon: "scheduled",
                        text: "Scheduled",
                        width: 203,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      SecondaryButton(Icon: "goals", text: "Goals", width: 203),
                      SizedBox(width: 10),
                      SecondaryButton(Icon: "loans", text: "Loans", width: 203),
                    ],
                  ),
                ),
                Row(
                  children: [
                    BoxButton(text: "Accounts", icon: "accounts"),
                    BoxButton(text: "Budgets", icon: "budget1"),
                    BoxButton(text: "Categories", icon: "categories"),
                    BoxButton(text: "Titles", icon: "title"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
