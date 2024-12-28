import 'package:c13_wed_islami/core/constants/app_assets.dart';
import 'package:c13_wed_islami/models/recent_data.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class RecentItemWidget extends StatelessWidget {
  final RecentData recentData;

  const RecentItemWidget({
    super.key,
    required this.recentData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: AppColors.primary, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                recentData.suraNameEN,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recentData.suraNameAR,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${recentData.suraVersesNumber} Verses",
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset(AppAssets.recentImg)
        ],
      ),
    );
  }
}
