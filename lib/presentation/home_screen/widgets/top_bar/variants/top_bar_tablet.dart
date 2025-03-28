import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/hover_image.dart';
import 'package:my_new_portfolio/core/base_widgets/hover_text.dart';
import 'package:my_new_portfolio/presentation/home_screen/providers/home_provider.dart';
import 'package:provider/provider.dart';

class TopBarTablet extends StatefulWidget {

  final Function(int) onSectionPressed;
  final VoidCallback onLeftDrawerButtonPressed;
  final VoidCallback onFacebookPressed;
  final VoidCallback onLinkedInPressed;
  final VoidCallback onGithubPressed;

  const TopBarTablet({
    super.key,
    required this.onSectionPressed,
    required this.onLeftDrawerButtonPressed,
    required this.onFacebookPressed,
    required this.onLinkedInPressed,
    required this.onGithubPressed
  });

  @override
  State<TopBarTablet> createState() => _TopBarTabletState();
}

class _TopBarTabletState extends State<TopBarTablet> {

  late HomeProvider provider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = Provider.of<HomeProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //949
    double ten = width * 0.0105374078; //10
    double sixteen = width * 0.01896733404; //18
    double twenty = width * 0.01896733404; //20
    double thirty = width * 0.02634351949; //30
    double fourty = width * 0.03161222339; //40
    double sixty = width * 0.06322444679; //60
    double eighty = width * 0.08429926238; //80
    return Container(
      width: double.infinity,
      height: sixty,
      color: AppColors.secondaryColor,
      child: Stack(
        children: [
          Row(
            children: [
              InkWell(
                onTap: widget.onLeftDrawerButtonPressed,
                child: Container(
                  width: sixty,
                  height: sixty,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _item(
                  title: "Home",
                  containerWidth: eighty,
                  containerHeight: sixty,
                  titleFontSize: sixteen,
                  hoverTextWidth: eighty,
                  hoverTextHeight: sixty,
                  hoverTextFontSize: sixteen,
                  onPressed: (){
                    widget.onSectionPressed(0);
                  },
                  isSelected: provider.selectedTab == 0),
              _item(
                  title: "Services",
                  containerWidth: eighty,
                  containerHeight: sixty,
                  titleFontSize: sixteen,
                  hoverTextWidth: eighty,
                  hoverTextHeight: sixty,
                  hoverTextFontSize: sixteen,
                  onPressed: (){
                    widget.onSectionPressed(1);
                  },
                  isSelected: provider.selectedTab == 1),
              _item(
                  title: "Work",
                  containerWidth: eighty,
                  containerHeight: sixty,
                  titleFontSize: sixteen,
                  hoverTextWidth: eighty,
                  hoverTextHeight: sixty,
                  hoverTextFontSize: sixteen,
                  onPressed: (){
                    widget.onSectionPressed(2);
                  },
                  isSelected: provider.selectedTab == 2),
              _item(
                  title: "Resume",
                  containerWidth: eighty,
                  containerHeight: sixty,
                  titleFontSize: sixteen,
                  hoverTextWidth: eighty,
                  hoverTextHeight: sixty,
                  hoverTextFontSize: sixteen,
                  onPressed: (){
                    widget.onSectionPressed(3);
                  },
                  isSelected: provider.selectedTab == 3),
              _item(
                  title: "Skills",
                  containerWidth: eighty,
                  containerHeight: sixty,
                  titleFontSize: sixteen,
                  hoverTextWidth: eighty,
                  hoverTextHeight: sixty,
                  hoverTextFontSize: sixteen,
                  onPressed: (){
                    widget.onSectionPressed(4);
                  },
                  isSelected: provider.selectedTab == 4),
              _item(
                  title: "Contact",
                  containerWidth: eighty,
                  containerHeight: sixty,
                  titleFontSize: sixteen,
                  hoverTextWidth: eighty,
                  hoverTextHeight: sixty,
                  hoverTextFontSize: sixteen,
                  onPressed: (){
                    widget.onSectionPressed(5);
                  },
                  isSelected: provider.selectedTab == 5),
            ],
          )
        ],
      ),
    );
  }

  Widget _item({
    required String title,
    required double containerWidth,
    required double containerHeight,
    required double titleFontSize,
    required double hoverTextWidth,
    required double hoverTextHeight,
    required double hoverTextFontSize,
    required VoidCallback onPressed,
    required bool isSelected
  }){
    if(isSelected){
      return InkWell(
        onTap: onPressed,
        child: Container(
          width: containerWidth,
          height: containerHeight,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.normal,
                color: Colors.white
            ),
          ),
        ),
      );
    }
    return HoverText(
      text: title,
      height: hoverTextHeight,
      width: hoverTextWidth,
      textSize: hoverTextFontSize,
      textColor: isSelected? Colors.white : AppColors.textGrey2,
      onPressed: onPressed,
    );
  }
}
