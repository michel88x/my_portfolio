import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_text_field.dart';

class ContactInputWidgetDesktop extends StatefulWidget {

  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int numRows;
  final bool isError;

  const ContactInputWidgetDesktop({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    this.numRows = 1,
    required this.isError
  });

  @override
  State<ContactInputWidgetDesktop> createState() => _ContactInputWidgetDesktopState();
}

class _ContactInputWidgetDesktopState extends State<ContactInputWidgetDesktop> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double three = width * 0.0019841269841; //3
    double twelve = width * 0.0079365079365; //12
    double fourteen = width * 0.0092592592592; //14
    double twenty = width * 0.0132275132275; //20
    double sixty = width * 0.0396825396825; //60
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
