import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_text_field.dart';

class ContactInputWidgetMobile extends StatefulWidget {

  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int numRows;
  final bool isError;

  const ContactInputWidgetMobile({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.numRows,
    required this.isError
  });

  @override
  State<ContactInputWidgetMobile> createState() => _ContactInputWidgetMobileState();
}

class _ContactInputWidgetMobileState extends State<ContactInputWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double three = width * 0.005008347245; //3
    double twelve = width * 0.02003338898; //12
    double fourteen = width * 0.02671118531; //16
    double twenty = width * 0.03338898164; //20
    double sixty = width * 0.1001669449; //60
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              "${widget.title} ",
              style: AppStyles.normalTextGrey2.copyWith(
                  color: Colors.white,
                  fontSize: fourteen
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -3),
              child: Text(
                "*",
                style: AppStyles.normalTextGrey2.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: fourteen
                ),
              ),
            )
          ],
        ),
        SizedBox(height: three,),
        CustomTextField(
          width: double.infinity,
          height: widget.numRows != 1? null : sixty,
          controller: widget.controller,
          hint: widget.hint,
          verticalPadding: twenty,
          horizontalPadding: twelve,
          textSize: fourteen,
          numRows: widget.numRows,
          isError: widget.isError,
        )
      ],
    );
  }
}
