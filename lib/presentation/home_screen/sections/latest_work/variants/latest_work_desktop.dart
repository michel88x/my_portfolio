import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/latest_work_widget/view/latest_work_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/view_all_latest_work_widget/view/view_all_latest_work_widget.dart';

class LatestWorkDesktop extends StatefulWidget {

  const LatestWorkDesktop({
    super.key,
  });

  @override
  State<LatestWorkDesktop> createState() => _LatestWorkDesktopState();
}

class _LatestWorkDesktopState extends State<LatestWorkDesktop> {

  List<LatestWorkObject> list = LatestWorkSectionDataset.list.sublist(0,4);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.01322751323; //20
    double thirty = width * 0.01984126984; //30
    double seventy = width * 0.0462962963; //70
    double eighty = width * 0.05291005291; //80
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
              )
          ],
        ),
      ),
    );
  }
}
