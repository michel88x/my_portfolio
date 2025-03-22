import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/hover_image.dart';
import 'package:my_new_portfolio/core/base_widgets/hover_text.dart';
import 'package:my_new_portfolio/presentation/home_screen/providers/home_provider.dart';
import 'package:provider/provider.dart';

class TopBarMobile extends StatefulWidget {

  final Function(int) onSectionPressed;
  final VoidCallback onLeftDrawerButtonPressed;
  final VoidCallback onFacebookPressed;
  final VoidCallback onLinkedInPressed;
  final VoidCallback onGithubPressed;

  const TopBarMobile({
    super.key,
    required this.onSectionPressed,
    required this.onLeftDrawerButtonPressed,
    required this.onFacebookPressed,
    required this.onLinkedInPressed,
    required this.onGithubPressed
  });

  @override
  State<TopBarMobile> createState() => _TopBarMobileState();
}

class _TopBarMobileState extends State<TopBarMobile> {
  late HomeProvider provider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = Provider.of<HomeProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //599
    double ten = width * 0.01669449082; //10
    double twenty = width * 0.03338898164; //20
    double thirty = width * 0.05008347245; //30
    double fourty = width * 0.05843071786; //35
    double eighty = width * 0.1085141903; //65
    return Container(
      width: double.infinity,
      height: eighty,
      color: AppColors.secondaryColor,
      child: Stack(
        children: [
          Row(
            children: [
              InkWell(
                onTap: widget.onLeftDrawerButtonPressed,
                child: Container(
                  width: eighty,
                  height: eighty,
                  color: AppColors.secondaryColorLight,
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: thirty,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ten,
              ),
              Center(
                child: SvgPicture.asset(
                  AppIcons.logo,
                  width: fourty,
                  height: fourty,
                ),
              ),
              SizedBox(
                width: ten,
              ),
              Text(
                "Michel.dev",
                style: AppStyles.normalWhite.copyWith(
                    fontSize: twenty
                ),
              ),
              const Spacer(),
              Center(
                child: HoverImage(
                  image: AppIcons.facebook,
                  color: Colors.white,
                  hoverColor: AppColors.primaryColor,
                  width: twenty,
                  height: twenty,
                  onPressed: widget.onFacebookPressed,
                ),
              ),
              SizedBox(width: twenty,),
              Center(
                child: HoverImage(
                  image: AppIcons.linkedIn,
                  color: Colors.white,
                  hoverColor: AppColors.primaryColor,
                  width: twenty,
                  height: twenty,
                  onPressed: widget.onLinkedInPressed,
                ),
              ),
              SizedBox(width: twenty,),
              Center(
                child: HoverImage(
                  image: AppIcons.github,
                  color: Colors.white,
                  hoverColor: AppColors.primaryColor,
                  width: twenty,
                  height: twenty,
                  onPressed: widget.onGithubPressed,
                ),
              ),
              SizedBox(width: twenty,),
            ],
          ),
        ],
      ),
    );
  }

}
