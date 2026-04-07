import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg", height: 35),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/spending_summary.svg",
              height: 35,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/budget2.svg", height: 35),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/budget2.svg", height: 35),
            label: "home",
          ),
        ],
      ),
    );
  }
}
