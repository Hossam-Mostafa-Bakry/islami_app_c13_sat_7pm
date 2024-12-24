import 'package:c13_wed_islami/core/constants/app_assets.dart';
import 'package:c13_wed_islami/core/theme/app_colors.dart';
import 'package:c13_wed_islami/features/layout/pages/hadith_tab.dart';
import 'package:c13_wed_islami/features/layout/pages/quran_tab.dart';
import 'package:c13_wed_islami/features/layout/pages/radio_tab.dart';
import 'package:c13_wed_islami/features/layout/pages/sbha_tab.dart';
import 'package:c13_wed_islami/features/layout/pages/times_tab.dart';
import 'package:c13_wed_islami/features/layout/widgets/custom_nav_bar_item.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  static String routeName = "/layout";

  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SbhaTab(),
    RadioTab(),
    TimesTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.white,
        showUnselectedLabels: false,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectedIndex: selectedIndex,
              navBarItemIndex: 0,
              iconPath: AppAssets.quranIcn,
            ),
            label: "Quaran",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectedIndex: selectedIndex,
              navBarItemIndex: 1,
              iconPath: AppAssets.hadithIcn,
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectedIndex: selectedIndex,
              navBarItemIndex: 2,
              iconPath: AppAssets.sbhaIcn,
            ),
            label: "Sbha",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectedIndex: selectedIndex,
              navBarItemIndex: 3,
              iconPath: AppAssets.radioIcn,
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectedIndex: selectedIndex,
              navBarItemIndex: 4,
              iconPath: AppAssets.timesIcn,
            ),
            label: "Times",
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: tabs[selectedIndex],
    );
  }
}
