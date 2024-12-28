import 'package:c13_wed_islami/features/layout/layout_page.dart';
import 'package:c13_wed_islami/features/layout/quran/quran_details_view.dart';
import 'package:c13_wed_islami/features/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme()),
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        LayoutPage.routeName: (context) => LayoutPage(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
