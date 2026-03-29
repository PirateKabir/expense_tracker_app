import 'package:expense_tracker_app/views/widgets/change_screen_box.dart';
import 'package:expense_tracker_app/views/widgets/primary_button.dart';
import 'package:expense_tracker_app/views/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/welcome_screen_img.jpg",
                      height: height * 0.3,
                    ),
                    Text(
                      "Welcome to X!",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SizedBox(height: 30),
                    SecondaryButton(
                      Icon: "assets/icons/google_icon.svg",
                      text: "Sign In with Google",
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Keep your data backed up and synced\nwith Google Drive",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 40),
                    PrimaryButton(text: "Continue Without Sign In", width: 235),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ChangeScreenBox(icon: Icons.arrow_back),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
