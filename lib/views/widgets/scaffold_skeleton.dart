import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScaffoldSkeleton extends StatelessWidget {
  final String? icon1;
  final String? icon2;
  final bool back;
  final String text;
  final Widget child;
  final double bottomPadding;
  ScaffoldSkeleton({
    super.key,
    this.icon1,
    this.icon2,
    this.back = true,
    required this.text,
    required this.child,
    this.bottomPadding = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                SvgPicture.asset("assets/icons/$icon1.svg", height: 32),
                SizedBox(width: 28),
                SvgPicture.asset("assets/icons/$icon2.svg", height: 32),
                SizedBox(width: 20),
              ],
              shadowColor: Colors.black,
              elevation: 0,
              scrolledUnderElevation: 4,
              pinned: true,
              toolbarHeight: 50,
              collapsedHeight: 75,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  text,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                centerTitle: false,
                titlePadding: EdgeInsets.only(left: 18, bottom: bottomPadding),
              ),
              centerTitle: false,
              automaticallyImplyLeading: back,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
            ),
            SliverToBoxAdapter(child: child),
          ],
        ),
      ),
    );
  }
}
