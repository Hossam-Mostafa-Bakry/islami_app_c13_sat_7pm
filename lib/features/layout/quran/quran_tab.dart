import 'package:c13_wed_islami/core/constants/app_assets.dart';
import 'package:c13_wed_islami/core/theme/app_colors.dart';
import 'package:c13_wed_islami/features/layout/quran/widgets/recent_item_widegt.dart';
import 'package:c13_wed_islami/features/layout/quran/widgets/sura_item_widget.dart';
import 'package:c13_wed_islami/models/recent_data.dart';
import 'package:flutter/material.dart';

import '../../../models/sura_data_model.dart';
import 'quran_details_view.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<RecentData> recentDataList = [
    RecentData(
      suraNameEN: "Al-Anbiya",
      suraNameAR: "الأنبياء",
      suraVersesNumber: "112",
    ),
    RecentData(
      suraNameEN: "Al-Fatiha",
      suraNameAR: "الفاتحه",
      suraVersesNumber: "7",
    ),
  ];
  List<SuraDataModel> suraList = [
    SuraDataModel(id: 1, nameEN: "Al-Fatihah", nameAR: "الفاتحه", verses: 7),
    SuraDataModel(id: 2, nameEN: "Al-Baqarah", nameAR: "البقرة", verses: 286),
    SuraDataModel(
        id: 3, nameEN: "Aal-E-Imran", nameAR: "آل عمران", verses: 200),
    SuraDataModel(id: 4, nameEN: "An-Nisa", nameAR: "النساء", verses: 176),
    SuraDataModel(id: 5, nameEN: "Al-Maidah", nameAR: "المائدة", verses: 120),
    SuraDataModel(id: 6, nameEN: "Al-An'am", nameAR: "الأنعام", verses: 165),
    SuraDataModel(id: 7, nameEN: "Al-A'raf", nameAR: "الأعراف", verses: 206),
    SuraDataModel(id: 8, nameEN: "Al-Anfal", nameAR: "الأنفال", verses: 75),
    SuraDataModel(id: 9, nameEN: "At-Tawbah", nameAR: "التوبة", verses: 129),
    SuraDataModel(id: 10, nameEN: "Yunus", nameAR: "يونس", verses: 109),
    SuraDataModel(id: 11, nameEN: "Hud", nameAR: "هود", verses: 123),
    SuraDataModel(id: 12, nameEN: "Yusuf", nameAR: "يوسف", verses: 111),
    SuraDataModel(id: 13, nameEN: "Ar-Ra'd", nameAR: "الرعد", verses: 43),
    SuraDataModel(id: 14, nameEN: "Ibrahim", nameAR: "إبراهيم", verses: 52),
    SuraDataModel(id: 15, nameEN: "Al-Hijr", nameAR: "الحجر", verses: 99),
    SuraDataModel(id: 16, nameEN: "An-Nahl", nameAR: "النحل", verses: 128),
    SuraDataModel(id: 17, nameEN: "Al-Isra", nameAR: "الإسراء", verses: 111),
    SuraDataModel(id: 18, nameEN: "Al-Kahf", nameAR: "الكهف", verses: 110),
    SuraDataModel(id: 19, nameEN: "Maryam", nameAR: "مريم", verses: 98),
    SuraDataModel(id: 20, nameEN: "Ta-Ha", nameAR: "طه", verses: 135),
    SuraDataModel(id: 21, nameEN: "Al-Anbiya", nameAR: "الأنبياء", verses: 112),
    SuraDataModel(id: 22, nameEN: "Al-Hajj", nameAR: "الحج", verses: 78),
    SuraDataModel(
        id: 23, nameEN: "Al-Mu'minun", nameAR: "المؤمنون", verses: 118),
    SuraDataModel(id: 24, nameEN: "An-Nur", nameAR: "النّور", verses: 64),
    SuraDataModel(id: 25, nameEN: "Al-Furqan", nameAR: "الفرقان", verses: 77),
    SuraDataModel(
        id: 26, nameEN: "Ash-Shu'ara", nameAR: "الشعراء", verses: 227),
    SuraDataModel(id: 27, nameEN: "An-Naml", nameAR: "النّمل", verses: 93),
    SuraDataModel(id: 28, nameEN: "Al-Qasas", nameAR: "القصص", verses: 88),
    SuraDataModel(id: 29, nameEN: "Al-Ankabut", nameAR: "العنكبوت", verses: 69),
    SuraDataModel(id: 30, nameEN: "Ar-Rum", nameAR: "الرّوم", verses: 60),
    SuraDataModel(id: 31, nameEN: "Luqman", nameAR: "لقمان", verses: 34),
    SuraDataModel(id: 32, nameEN: "As-Sajda", nameAR: "السجدة", verses: 30),
    SuraDataModel(id: 33, nameEN: "Al-Ahzab", nameAR: "الأحزاب", verses: 73),
    SuraDataModel(id: 34, nameEN: "Saba", nameAR: "سبأ", verses: 54),
    SuraDataModel(id: 35, nameEN: "Fatir", nameAR: "فاطر", verses: 45),
    SuraDataModel(id: 36, nameEN: "Ya-Sin", nameAR: "يس", verses: 83),
    SuraDataModel(id: 37, nameEN: "As-Saffat", nameAR: "الصافات", verses: 182),
    SuraDataModel(id: 38, nameEN: "Sad", nameAR: "ص", verses: 88),
    SuraDataModel(id: 39, nameEN: "Az-Zumar", nameAR: "الزمر", verses: 75),
    SuraDataModel(id: 40, nameEN: "Ghafir", nameAR: "غافر", verses: 85),
    // Add the remaining Suras following this pattern...
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppAssets.quranBg,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppAssets.islamiHeadImg,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: TextStyle(
                      fontFamily: "Janna",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.titleTextColor),
                  filled: true,
                  fillColor: AppColors.secondary.withOpacity(0.6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: AppColors.primary, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: AppColors.primary, width: 1.5),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage(
                        AppAssets.quranIcn,
                      ),
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
                bottom: 10.0,
              ),
              child: Text(
                "Most Recently",
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 155,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => RecentItemWidget(
                  recentData: recentDataList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                itemCount: recentDataList.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
                bottom: 10.0,
              ),
              child: Text(
                "Sura List",
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    QuranDetailsView.routeName,
                    arguments: suraList[index],
                  );
                },
                child: SuraItemWidget(
                  suraDataModel: suraList[index],
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                indent: 60,
                endIndent: 60,
                thickness: 1.5,
              ),
              itemCount: suraList.length,
            ),
          ],
        ),
      ),
    );
  }
}
