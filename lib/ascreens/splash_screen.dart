import 'package:flutter/material.dart';
import 'package:travel_app_ui/ascreens/home_screen.dart';
import 'package:travel_app_ui/core/app_colors.dart';
import 'package:travel_app_ui/core/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToHomePage();
  }

  Future goToHomePage() async {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.KGradientPrimary, AppColors.KGradientSecondary],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Travel',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: 'lobster',
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 30,
                  child: Image.asset(
                    'assets/icons/globe icon.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Find Your Dream\nDestination With Us',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
