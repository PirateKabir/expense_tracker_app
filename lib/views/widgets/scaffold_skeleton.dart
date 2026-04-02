import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScaffoldSkeleton extends StatelessWidget {
  final String? icon;
  final String text;
  final Widget child;
  final bool back;
  final double bottomPadding;
  ScaffoldSkeleton({
    super.key,
    this.icon,
    required this.text,
    required this.child,
    this.back = false,
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
              shadowColor: Colors.black,
              elevation: 0,
              scrolledUnderElevation: 4,
              pinned: true,
              toolbarHeight: 50,
              leading: Padding(
                padding: const EdgeInsets.only(top: 15, right: 1),
                child: SvgPicture.asset(
                  "assets/icons/$icon.svg",
                  alignment: AlignmentGeometry.directional(38, 1),
                ),
              ),
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
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
            ),
            SliverToBoxAdapter(child: child),
          ],
        ),
      ),
    );
  }
}
