import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';

class ContactActionWidgetDesktop extends StatefulWidget {

  final ContactActionObject data;
  final VoidCallback onPressed;

  const ContactActionWidgetDesktop({
    super.key,
    required this.onPressed,
    required this.data
  });

  @override
  State<ContactActionWidgetDesktop> createState() => _ContactActionWidgetDesktopState();
}

class _ContactActionWidgetDesktopState extends State<ContactActionWidgetDesktop> {

  late AppStyles styles;

  @override
  void initState() {
    super.initState();
    styles = AppStylesDesktop();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double two = width * 0.0013227513227; //2
    double fifteen = width * 0.0099206349206; //15
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.0132275132275; //20
    double sixty = width * 0.0396825396825; //60

    return InkWell(
      onTap: widget.onPressed,
      child: Row(
        children: [
          Container(
            width: sixty,
            height: sixty,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(fifteen),
              gradient: const LinearGradient(
                colors: [
                  AppColors.primaryColor,
                  AppColors.primaryBackgroundColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(fifteen),
                color: AppColors.primaryBackgroundColor
              ),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: widget.data.icon,
                  width: twenty,
                  height: twenty,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(width: fifteen,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.data.title,
                  style: styles.eighteenTextGrey2.copyWith(
                    fontSize: eighteen
                  ),
                ),
                SizedBox(height: two,),
                Text(
                  widget.data.value,
                  style: styles.eighteenWhiteBold.copyWith(
                    fontSize: eighteen
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
