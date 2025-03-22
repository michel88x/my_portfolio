import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';

class ContactActionWidgetMobile extends StatefulWidget {

  final ContactActionObject data;
  final VoidCallback onPressed;

  const ContactActionWidgetMobile({
    super.key,
    required this.onPressed,
    required this.data
  });

  @override
  State<ContactActionWidgetMobile> createState() => _ContactActionWidgetMobileState();
}

class _ContactActionWidgetMobileState extends State<ContactActionWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double two = width * 0.003338898164; //2
    double fifteen = width * 0.02504173623; //15
    double sixteen = width * 0.02671118531; //16
    double eighteen = width * 0.03005008347; //18
    double twenty = width * 0.03338898164; //20
    double sixty = width * 0.1001669449; //60

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
                      fontSize: sixteen
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
