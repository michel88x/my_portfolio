import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/providers/home_provider.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/view/blog_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/view/contact_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/view/home_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/view/latest_work_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/view/numbers_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/view/offer_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/view/resume_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/view/skills_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/top_bar/top_bar.dart';
import 'package:provider/provider.dart';

import '../sections/companies/view/companies_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ScrollController scrollController = ScrollController();
  late HomeProvider provider;
  List<GlobalKey> keys = <GlobalKey>[
    GlobalKey(debugLabel: "1"),
    GlobalKey(debugLabel: "2"),
    GlobalKey(debugLabel: "3"),
    GlobalKey(debugLabel: "4"),
    GlobalKey(debugLabel: "5"),
    GlobalKey(debugLabel: "6"),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = Provider.of<HomeProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TopBar(
            onSectionPressed: (s){
              provider.changeTab(s);
              Scrollable.ensureVisible(keys[s].currentContext!, duration: const Duration(milliseconds: 1500), curve: Curves.easeInOutBack);
            },
            onLeftDrawerButtonPressed: (){

            },
            onFacebookPressed: (){},
            onLinkedInPressed: (){},
            onGithubPressed: (){},
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HomeSection(key: keys[0],),
                  const NumbersSection(),
                  OfferSection(
                    onQuotePressed: (){},
                    onSectionPressed: (){},
                  ),
                  LatestWorkSection(
                    onViewAllProjectsPressed: (){},
                    onItemPressed: (url){},
                  ),
                  ResumeSection(onTouchPressed: (){}),
                  const SkillsSection(),
                  const CompaniesSection(),
                  const BlogSection(),
                  ContactSection(
                      onMessageSent: (contactDetails){},
                      onActionPressed: (actionType, value){},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
