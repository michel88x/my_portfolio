import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/widgets/blog_widget/view/blog_widget.dart';

class BlogSectionTablet extends StatefulWidget {
  const BlogSectionTablet({super.key});

  @override
  State<BlogSectionTablet> createState() => _BlogSectionTabletState();
}

class _BlogSectionTabletState extends State<BlogSectionTablet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.01685985248; // 13
    double twenty = width * 0.0158061117; // 15
    double thirty = width * 0.02634351949; // 25
    double seventy = width * 0.05268703899; // 50
    double eighty = width * 0.06322444679; // 60
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(eighty),
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
                crossAxisCount: 2,
                childAspectRatio: 0.8,
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
