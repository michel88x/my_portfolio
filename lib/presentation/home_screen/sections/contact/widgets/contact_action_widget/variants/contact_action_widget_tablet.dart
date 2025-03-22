import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';

class ContactActionWidgetTablet extends StatefulWidget {

  final ContactActionObject data;
  final VoidCallback onPressed;

  const ContactActionWidgetTablet({
    super.key,
    required this.onPressed,
    required this.data
  });

  @override
  State<ContactActionWidgetTablet> createState() => _ContactActionWidgetTabletState();
}

class _ContactActionWidgetTabletState extends State<ContactActionWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double two = width * 0.00210748156; //2
    double fifteen = width * 0.01264488936; //12
    double eighteen = width * 0.01475237092; //14
    double twenty = width * 0.0158061117; //15
    double sixty = width * 0.04741833509; //45

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
                  style: AppStyles.normalTextGrey2.copyWith(
                      fontSize: eighteen
                  ),
                ),
                SizedBox(height: two,),
                Text(
                  widget.data.value,
                  style: AppStyles.boldWhite.copyWith(
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
