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
      dates: "2018-2019",
      title: "Certification in UX Design",
      subtitle: "University of Stanford",
      degree: 4.9,
      overall: 5
    ),
    ResumeEducationObject(
        dates: "2017-2018",
        title: "Certification in Web Dev",
        subtitle: "University of Stanford",
        degree: 5.0,
        overall: 5
    ),
    ResumeEducationObject(
        dates: "2014-2016",
        title: "Advanced UX/UI Bootcamp",
        subtitle: "Design Academy",
        degree: 4.9,
        overall: 5
    ),
    ResumeEducationObject(
        dates: "2012-2013",
        title: "Certification in Graphic Design",
        subtitle: "Coursera",
        degree: 4.8,
        overall: 5
    ),
  ];

  static List<ResumeExperienceObject> experienceList = <ResumeExperienceObject>[
    ResumeExperienceObject(
      dates: "2019 - Present",
      title: "Senior UI/UX Designer",
      subTitle: "Leader in Creative team"
    ),
    ResumeExperienceObject(
        dates: "2016 - 2019",
        title: "UI/UX Designer at BOS Agency",
        subTitle: "Tech Startup"
    ),
    ResumeExperienceObject(
        dates: "2014-2016",
        title: "Freelance UI/UX Designer",
        subTitle: "Self-Employed"
    ),
    ResumeExperienceObject(
        dates: "2012 - 2014",
        title: "Junior UI Designer",
        subTitle: "Web Solutions team"
    ),
  ];
}