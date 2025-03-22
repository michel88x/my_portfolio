import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/top_bar/variants/top_bar_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/top_bar/variants/top_bar_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/top_bar/variants/top_bar_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopBar extends StatelessWidget {

  final Function(int) onSectionPressed;
  final VoidCallback onLeftDrawerButtonPressed;
  final VoidCallback onFacebookPressed;
  final VoidCallback onLinkedInPressed;
  final VoidCallback onGithubPressed;

  const TopBar({
    super.key,
    required this.onSectionPressed,
    required this.onLeftDrawerButtonPressed,
    required this.onFacebookPressed,
    required this.onLinkedInPressed,
    required this.onGithubPressed
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => TopBarDesktop(
        onSectionPressed: onSectionPressed,
        onLeftDrawerButtonPressed: onLeftDrawerButtonPressed,
        onFacebookPressed: onFacebookPressed,
        onLinkedInPressed: onLinkedInPressed,
        onGithubPressed: onGithubPressed,
      ),
      tablet: (context) => TopBarTablet(
        onSectionPressed: onSectionPressed,
        onLeftDrawerButtonPressed: onLeftDrawerButtonPressed,
        onFacebookPressed: onFacebookPressed,
        onLinkedInPressed: onLinkedInPressed,
        onGithubPressed: onGithubPressed,
      ),
      mobile: (context) => TopBarMobile(
        onSectionPressed: onSectionPressed,
        onLeftDrawerButtonPressed: onLeftDrawerButtonPressed,
        onFacebookPressed: onFacebookPressed,
        onLinkedInPressed: onLinkedInPressed,
        onGithubPressed: onGithubPressed,
      ),
    );
  }
}
