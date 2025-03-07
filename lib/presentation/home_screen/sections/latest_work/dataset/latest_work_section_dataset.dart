
import 'package:my_new_portfolio/core/app/app_images.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';

class LatestWorkSectionDataset{
  static const String title1 = "My Latest Works";
  static const String title2 = "I believe that working hard and trying to learn every day will\nmake me improve in satisfying my customers.";
  static const String viewAllProjects = "View All Projects";
  static List<LatestWorkObject> list = <LatestWorkObject>[
    LatestWorkObject(
        title: "Photo App UI/UX",
        subtitle: "Bokeh network",
        image: AppImages.latestWork1,
        url: ""
    ),
    LatestWorkObject(
        title: "Mobile App Design",
        subtitle: "Tech Innovators Inc.",
        image: AppImages.latestWork2,
        url: ""
    ),
    LatestWorkObject(
        title: "Interaction Design",
        subtitle: "HealthTrack Solutions",
        image: AppImages.latestWork3,
        url: ""
    ),
    LatestWorkObject(
        title: "Design Consultation",
        subtitle: "Creative Pulse Studios",
        image: AppImages.latestWork4,
        url: ""
    ),
  ];

  static const String viewAll = "View All";
}