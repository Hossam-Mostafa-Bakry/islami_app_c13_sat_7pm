import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/core/constants/app_assets.dart';
import '/core/theme/app_colors.dart';
import '../../../models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "QuranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDataModel;

    if (verses.isEmpty) loadData(args.id.toString());

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.quranDetailsView,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColors.primary,
          ),
          centerTitle: true,
          title: Text(
            args.nameEN,
            style: TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                args.nameAR,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 24,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "${verses[index]} [${index + 1}]",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontSize: 20,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  itemCount: verses.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadData(String id) async {
    // we read data from file
    String content = await rootBundle.loadString("assets/files/$id.txt");
    // split for strings
    verses = content.split("\n");
    setState(() {});
  }
}
