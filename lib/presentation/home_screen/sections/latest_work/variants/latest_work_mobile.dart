import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/latest_work_widget/view/latest_work_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/view_all_latest_work_widget/view/view_all_latest_work_widget.dart';

class LatestWorkMobile extends StatefulWidget {

  const LatestWorkMobile({
    super.key,
  });

  @override
  State<LatestWorkMobile> createState() => _LatestWorkMobileState();
}

class _LatestWorkMobileState extends State<LatestWorkMobile> {

  List<LatestWorkObject> list = LatestWorkSectionDataset.list.sublist(0,4);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double ten = width * 0.01669449082; //10
    double seventeen = width * 0.03338898164; //15
    double sixteen = width * 0.02671118531; //13
    double twenty = width * 0.02504173623; //15
    double thirty = width * 0.04173622705; //25
    double seventy = width * 0.07512520868; //50
    double eighty = width * 0.1085141903; //60
    return Container(
      width: double.infinity,
      color: AppColors.secondaryColor,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: eighty, horizontal: ten),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LatestWorkSectionDataset.title1,
              style: AppStyles.boldestPrimaryColor.copyWith(
                  fontSize: seventy
              ),
            ),
            SizedBox(height: seventeen,),
            Text(
              LatestWorkSectionDataset.title2,
              style: AppStyles.normalTextGrey2.copyWith(
                  fontSize: sixteen
              ),
            ),
            SizedBox(height: thirty,),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: twenty),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1,
                  mainAxisSpacing: thirty,
                  crossAxisSpacing: twenty,
                ),
                itemCount: list.length,
                itemBuilder: (context, index){
                  return LatestWorkWidget(
                      data: list[index],
                  );
                }
            ),
            if(list.length != LatestWorkSectionDataset.list.length)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: thirty,),
                Center(
                  child: ViewAllLatestWorkWidget(
                    onPressed: (){
                      setState(() {
                        list.addAll(LatestWorkSectionDataset.list.sublist(list.length, list.length +
                            ((LatestWorkSectionDataset.list.length - list.length)>=4? 4 : (LatestWorkSectionDataset.list.length - list.length))));
                      });
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
