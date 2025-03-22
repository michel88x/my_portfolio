import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/base_widgets/JDirectionality.dart';
import 'package:my_new_portfolio/presentation/home_screen/providers/home_provider.dart';
import 'package:my_new_portfolio/presentation/home_screen/view/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:selectable/selectable.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        ),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return JDirectionality(
          child: Selectable(
            selectionColor: AppColors.primaryColor,
            selectWordOnDoubleTap: true,
            child: MaterialApp(
              title: 'Michel Ibrahimm',
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(useMaterial3: true).copyWith(
                primaryColor: AppColors.primaryColor,
              ),
              home: const HomeScreen(),
            ),
          ),
        );
      }
    );
  }
}
