import 'package:c13_wed_islami/core/constants/app_assets.dart';
import 'package:c13_wed_islami/core/theme/app_colors.dart';
import 'package:c13_wed_islami/models/sura_data_model.dart';
import 'package:flutter/material.dart';

class SuraItemWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const SuraItemWidget({
    super.key,
    required this.suraDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.numberIcn,
                ),
              ),
            ),
            child: Text(
              suraDataModel.id.toString(),
              style: TextStyle(
                fontFamily: "Janna",
                fontSize: 17,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.nameEN,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 20,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${suraDataModel.verses} Verses",
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 16,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.nameAR,
            style: TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
