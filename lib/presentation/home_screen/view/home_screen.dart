import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/utils/base_functions.dart';
import 'package:my_new_portfolio/core/utils/links.dart';
import 'package:my_new_portfolio/presentation/home_screen/providers/home_provider.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/view/blog_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/view/contact_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/view/home_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/view/latest_work_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/view/numbers_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/view/offer_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/view/resume_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/view/skills_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/app_drawer/view/app_drawer.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/top_bar/top_bar.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

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
  bool showFloatingActionButton = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = Provider.of<HomeProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      drawer: AppDrawer(
        onItemSelected: (i){
          Scrollable.ensureVisible(keys[i].currentContext!, duration: const Duration(milliseconds: 1500), curve: Curves.linear);
        },
      ),
      floatingActionButton: showFloatingActionButton? FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        heroTag: "GoToTop",
        child: const Icon(Icons.arrow_upward, color: Colors.white,),
        onPressed: (){
          Scrollable.ensureVisible(keys[0].currentContext!, duration: const Duration(milliseconds: 1500), curve: Curves.linear);
        },
      ) : null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Builder(
            builder: (context) {
              return TopBar(
                onSectionPressed: (s){
                  Scrollable.ensureVisible(keys[s].currentContext!, duration: const Duration(milliseconds: 1500), curve: Curves.linear);
                },
                onLeftDrawerButtonPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                onFacebookPressed: (){
                  launchUrl(Uri.parse(Links.facebook));
                },
                onLinkedInPressed: (){
                  launchUrl(Uri.parse(Links.linkedIn));
                },
                onGithubPressed: (){
                  launchUrl(Uri.parse(Links.github));
                },
              );
            }
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  VisibilityDetector(
                      key: const Key("HomeSection"),
                      onVisibilityChanged: (v){
                        if(v.visibleFraction == 0.0){
                          setState(() {
                            showFloatingActionButton = true;
                          });
                        }else{
                          setState(() {
                            showFloatingActionButton = false;
                          });
                        }
                      },
                      child: HomeSection(
                        key: keys[0],
                        onDownloadCVPressed: (){},
                        onHireMePressed: (){
                          Scrollable.ensureVisible(keys.last.currentContext!, duration: const Duration(milliseconds: 1500), curve: Curves.linear);
                        },
                      )),
                  const NumbersSection(),
                  OfferSection(
                    key: keys[1],
                    onSectionPressed: (){
                      Scrollable.ensureVisible(keys.first.currentContext!, duration: const Duration(milliseconds: 1500), curve: Curves.linear);
                    },
                  ),
                  LatestWorkSection(
                    key: keys[2],
                  ),
                  ResumeSection(
                    key: keys[3],
                    onTouchPressed: (){},
                  ),
                  SkillsSection(
                    key: keys[4],
                  ),
                  const CompaniesSection(),
                  const BlogSection(),
                  ContactSection(
                    key: keys[5],
                    onMessageSent: (contactDetails) async{
                      final supabase = Supabase.instance.client;
                      await supabase
                          .from('Requests')
                          .insert(contactDetails.toJson());
                      showSuccessMessage(context, "Your message has been sent successfully");
                    },
                    onActionPressed: (actionType, value){
                      if(actionType == ContactActionType.PHONE){
                        launchUrl(Uri.parse("tel:${value.replaceFirst("+", "").replaceAll("-", "")}"));
                      }
                      if(actionType == ContactActionType.EMAIL){
                        launchUrl(Uri.parse("mailto:$value"));
                      }
                      if(actionType == ContactActionType.WHATSAPP){
                        launchUrl(Uri.parse("https://wa.me/${value.replaceAll("-", "")}"));
                      }
                      if(actionType == ContactActionType.TELEGRAM){
                        launchUrl(Uri.parse("https://t.me/${value.replaceAll("-", "")}"));
                      }
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
