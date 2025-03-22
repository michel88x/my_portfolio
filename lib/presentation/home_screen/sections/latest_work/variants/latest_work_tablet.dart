import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/latest_work_widget/view/latest_work_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/view_all_latest_work_widget/view/view_all_latest_work_widget.dart';

class LatestWorkTablet extends StatefulWidget {

  final VoidCallback onViewAllProjectsPressed;
  final Function(String) onItemPressed;

  const LatestWorkTablet({
    super.key,
    required this.onViewAllProjectsPressed,
    required this.onItemPressed
  });

  @override
  State<LatestWorkTablet> createState() => _LatestWorkTabletState();
}

class _LatestWorkTabletState extends State<LatestWorkTablet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double seventeen = width * 0.0158061117; //15
    double eighteen = width * 0.01369863014; //13
    double twenty = width * 0.0158061117; //15
    double thirty = width * 0.02634351949; //25
    double seventy = width * 0.05268703899; //50
    double eighty = width * 0.06322444679; //60
    return Container(
      width: double.infinity,
      color: AppColors.secondaryColor,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(eighty),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LatestWorkSectionDataset.title1,
              style: AppStyles.boldestPrimaryColor.copyWith(
                  fontSize: seventy
              ),
            ),
            SizedBox(height: twenty,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    LatestWorkSectionDataset.title2,
                    style: AppStyles.normalTextGrey2.copyWith(
                        fontSize: eighteen
                    ),
                  ),
                ),
                CustomButton(
                    title: LatestWorkSectionDataset.viewAllProjects,
                    icon: AppIcons.arrowRight,
                    verticalPadding: eighteen,
                    horizontalPadding: thirty,
                    fontSize: seventeen,
                    iconSize: twenty,
                    borderRadius: twenty,
                    innerPadding: twenty,
                    rotatedIcon: true,
                    onPressed: widget.onViewAllProjectsPressed
                )
              ],
            ),
            SizedBox(height: thirty,),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: twenty),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: thirty,
                  crossAxisSpacing: twenty,
                ),
                itemCount: LatestWorkSectionDataset.list.length,
                itemBuilder: (context, index){
                  return LatestWorkWidget(
                      data: LatestWorkSectionDataset.list[index],
                      onPressed: widget.onItemPressed
                  );
                }
            ),
            SizedBox(height: thirty,),
            Center(
              child: ViewAllLatestWorkWidget(
                onPressed: widget.onViewAllProjectsPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
