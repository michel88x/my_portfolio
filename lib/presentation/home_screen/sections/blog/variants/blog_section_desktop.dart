import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/widgets/blog_widget/view/blog_widget.dart';

class BlogSectionDesktop extends StatefulWidget {
  const BlogSectionDesktop({super.key});

  @override
  State<BlogSectionDesktop> createState() => _BlogSectionDesktopState();
}

class _BlogSectionDesktopState extends State<BlogSectionDesktop> {

  late AppStyles styles;

  @override
  void initState() {
    super.initState();
    styles = AppStylesDesktop();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.0119047619; // 18
    double twenty = width * 0.01322751323; // 20
    double thirty = width * 0.01984126984; // 30
    double seventy = width * 0.0462962963; // 70
    double eighty = width * 0.05291005291; // 80
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
            style: styles.seventyPrimaryBold.copyWith(
              fontSize: seventy
            ),
          ),
          SizedBox(height: twenty,),
          Row(
            children: [
              Expanded(
                child: Text(
                  BlogSectionDataset.subtitle,
                  style: styles.eighteenTextGrey2.copyWith(
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
                crossAxisCount: 3,
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
