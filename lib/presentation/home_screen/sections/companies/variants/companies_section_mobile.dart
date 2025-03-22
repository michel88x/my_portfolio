import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/companies/dataset/companies_section_dataset.dart';

class CompaniesSectionMobile extends StatefulWidget {
  const CompaniesSectionMobile({super.key});

  @override
  State<CompaniesSectionMobile> createState() => _CompaniesSectionMobileState();
}

class _CompaniesSectionMobileState extends State<CompaniesSectionMobile> {

  final _controller = ScrollController();
  late Timer timer;
  double totalItemWidth = 180;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((c) {
      start(totalItemWidth);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.02671118531; //16
    double twenty = width * 0.03338898164; //20
    double fourty = width * 0.05008347245; //30
    double fifty = width * 0.08347245409; //50
    double eighty = width * 0.1085141903; //65
    double hundred = width * 0.1669449082; //100
    totalItemWidth = width * 0.3005008347; //180
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: eighty),
      color: AppColors.primaryBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            CompaniesSectionDataset.title,
            textAlign: TextAlign.center,
            style: AppStyles.boldestWhite.copyWith(
                fontSize: fourty
            ),
          ),
          SizedBox(height: twenty,),
          Text(
            CompaniesSectionDataset.subTitle,
            style: AppStyles.normalTextGrey2.copyWith(
                fontSize: eighteen
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: fourty,),
          SizedBox(
              width: double.infinity,
              height: fifty,
              child: ListView.builder(
                  itemCount: CompaniesSectionDataset.images.length  * 100,
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemBuilder: (context, index){
                    String image = CompaniesSectionDataset.images[index % CompaniesSectionDataset.images.length];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: fourty),
                      child: Image.asset(
                        image,
                        width: hundred,
                        height: fifty,
                        color: AppColors.primaryColor,
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    timer.cancel();
    super.dispose();
  }

  void start(double totalItemWidth) {
    timer = Timer.periodic(const Duration(milliseconds: 50), (time){
      if(_controller.hasClients){
        _controller.animateTo(
            _controller.offset + 3, //Control Speed
            duration: const Duration(milliseconds: 50),
            curve: Curves.easeIn
        );
        if (_controller.offset >= _controller.position.maxScrollExtent - totalItemWidth) {
          _controller.jumpTo(0);
        }
      }
    });
  }
}
