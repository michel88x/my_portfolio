import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';

class ResumeSectionDataset {
  static const String title1 = "My Resume";
  static const String title2 = "I believe that working hard and trying to learn every day will\nmake me improve in satisfying my customers.";
  static const String getInTouch = "Get in touch";
  static const String education = "Education";
  static const String experience = "Experience";

  static List<ResumeEducationObject> educationList = <ResumeEducationObject>[
    ResumeEducationObject(
        dates: "2019-2023",
        title: "Master's Degree - Web Sciences",
        subtitle: "Syrian Virtual University",
        degree: 75,
        overall: 100
    ),
    ResumeEducationObject(
      dates: "2013-2018",
      title: "Bachelor's Degree - Informatics Engineering",
      subtitle: "University of Tishreen",
      degree: 76.6,
      overall: 100
    ),
  ];

  static List<ResumeExperienceObject> experienceList = <ResumeExperienceObject>[
    ResumeExperienceObject(
        dates: "2025 - Present",
        title: "Java Backend Developer",
        subTitle: "Maids.cc - UAE"
    ),
    ResumeExperienceObject(
        dates: "2024 - 2024",
        title: "Mobile Developer",
        subTitle: "APPS GATE - UAE"
    ),
    ResumeExperienceObject(
        dates: "2024 - Present",
        title: "Mobile Developer",
        subTitle: "Electo Mall - Erbil"
    ),
    ResumeExperienceObject(
        dates: "2023 - Present",
        title: "Mobile Developer",
        subTitle: "Realistic Solutions - Saudi Arabia" 
    ),
    ResumeExperienceObject(
        dates: "2022 - 2024",
        title: "Mobile Developer",
        subTitle: "MK Group - Saudi Arabia"
    ),
    ResumeExperienceObject(
      dates: "2022 - Present",
      title: "Mobile Developer",
      subTitle: "Maids.cc - UAE"
    ),
    ResumeExperienceObject(
        dates: "2023 - 2024",
        title: "Mobile Developer",
        subTitle: "DATUM - Iraq"
    ),
    ResumeExperienceObject(
        dates: "2021 - 2022",
        title: "Mobile Developer",
        subTitle: "SellAnyAd - Germany"
    ),
    ResumeExperienceObject(
        dates: "2020-2020",
        title: "Android Developer",
        subTitle: "Tecomsa - Lebanon"
    ),
    ResumeExperienceObject(
        dates: "2018 - 2020",
        title: "Android Developer",
        subTitle: "SCIT - Syria"
    ),
  ];
}