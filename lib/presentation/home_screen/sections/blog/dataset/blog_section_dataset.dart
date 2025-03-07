import 'package:my_new_portfolio/core/app/app_images.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_object.dart';

class BlogSectionDataset {
  static const String title = "Recent blog";
  static const String subtitle = "Explore the insights and trends shaping our industry";
  static List<BlogSectionObject> list = <BlogSectionObject>[
    BlogSectionObject(
      image: "${AppImages.onlineImages}/1*87v6lN9W2PNXih5j1pnMtw.jpg",
      type: "Flutter",
      date: "2025-02-27",
      title: "Performance Optimization Techniques in Flutter",
      description: "Essential techniques to optimize your Flutter app and ensure smooth performance",
      link: "https://medium.com/@eng.michel.ibrahim/performance-optimization-techniques-in-flutter-7b795dab9071"
    ),
    BlogSectionObject(
        image: "${AppImages.onlineImages}/thumbnail-56e335e3804788d89c5489b1c266cbb1.png",
        type: "Flutter Web",
        date: "2025-03-02",
        title: "Flutter Web Renderer: CanvasKit vs HTML — Which One Should You Choose?",
        description: "Advantages and Disadvantages of using each type of renderers",
        link: "https://medium.com/@eng.michel.ibrahim/flutter-web-renderer-canvaskit-vs-html-which-one-should-you-choose-3a0a7110097c"
    ),
    BlogSectionObject(
        image: "${AppImages.onlineImages}/The-rise-Of-Flutter_www-1.jpg",
        type: "Flutter Web",
        date: "2025-03-02",
        title: "How to Improve Flutter Web Performance When Using CanvasKit Renderer",
        description: "Tips and tricks for how to improve your Flutter Web applications",
        link: "https://medium.com/@eng.michel.ibrahim/how-to-improve-flutter-web-performance-when-using-canvaskit-renderer-58050204c0f0"
    ),
  ];
}