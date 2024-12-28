import 'package:animate_do/animate_do.dart';
import 'package:c13_wed_islami/core/constants/app_assets.dart';
import 'package:c13_wed_islami/features/layout/layout_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static String routeName = "splash";
  static final Duration _duration = Duration(
    milliseconds: 1750,
  );

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Size size;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed(LayoutPage.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppAssets.splashBG,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FadeInDown(
                duration: SplashPage._duration,
                child: Image.asset(
                  height: size.height * 0.30,
                  AppAssets.splashGlow,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: size.height * 0.25),
                child: FadeInLeft(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    width: size.width * 0.25,
                    AppAssets.splashLeftShape,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.25),
                child: FadeInRight(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    width: size.width * 0.25,
                    AppAssets.splashRightShape,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                duration: SplashPage._duration,
                child: Image.asset(
                  height: size.height * 0.25,
                  AppAssets.splashLogo,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: SplashPage._duration,
                child: Image.asset(
                  height: size.height * 0.25,
                  AppAssets.splashBrand,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
