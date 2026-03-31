import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:expense_tracker_app/views/widgets/edit_home_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditHome extends StatelessWidget {
  const EditHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Edit Home",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          "Tap each section to customize",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  EditHomeBox(icon: "homepage_banner", text: "Homepage Banner"),
                  EditHomeBox(icon: "accounts", text: "Accounts"),
                  EditHomeBox(icon: "activity_log", text: "Accounts List"),
                  EditHomeBox(icon: "budget1", text: "Budgets"),
                  EditHomeBox(icon: "goals", text: "Goals"),
                  EditHomeBox(icon: "i", text: "Income &\nExpenses"),
                  EditHomeBox(icon: "net_worth", text: "Net Worth"),
                  EditHomeBox(
                    icon: "subscription",
                    text: "Overdue &\nUpcoming",
                  ),
                  EditHomeBox(icon: "loans", text: "Loans"),
                  EditHomeBox(icon: "l_t_l", text: "Long Term Loans"),
                  EditHomeBox(icon: "spending_graph", text: "Spending Graph"),
                  EditHomeBox(icon: "budget2", text: "Pie Chart"),
                  EditHomeBox(icon: "heatmap", text: "Heatmap"),
                  EditHomeBox(
                    icon: "spending_summary",
                    text: "Transactions List",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
