import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/widgets/blog_widget/view/blog_widget.dart';

class BlogSectionMobile extends StatefulWidget {
  const BlogSectionMobile({super.key});

  @override
  State<BlogSectionMobile> createState() => _BlogSectionMobileState();
}

class _BlogSectionMobileState extends State<BlogSectionMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double ten = width * 0.01669449082; //10
    double eighteen = width * 0.02671118531; //16
    double twenty = width * 0.03338898164; //20
    double thirty = width * 0.04173622705; //25
    double seventy = width * 0.07512520868; //45
    double eighty = width * 0.1085141903; //65
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: eighty, horizontal: ten),
      color: AppColors.secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            BlogSectionDataset.title,
            style: AppStyles.boldestPrimaryColor.copyWith(
                fontSize: seventy
            ),
          ),
          SizedBox(height: twenty,),
          Row(
            children: [
              Expanded(
                child: Text(
                  BlogSectionDataset.subtitle,
                  style: AppStyles.normalTextGrey2.copyWith(
                      fontSize: eighteen
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: thirty,),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: twenty),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.98,
                mainAxisSpacing: twenty,
                crossAxisSpacing: twenty,
              ),
              itemCount: BlogSectionDataset.list.length,
              itemBuilder: (context, index){
                return BlogWidget(
                  data: BlogSectionDataset.list[index],
                );
              }
          )
        ],
      ),
    );
  }
}
