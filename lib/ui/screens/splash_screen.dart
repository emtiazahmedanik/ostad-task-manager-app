import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_task_manager/ui/screens/login_screen.dart';
import 'package:my_task_manager/ui/utils/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            width: double.maxFinite,
            height: double.maxFinite,
            AssetsPath.backgroundImagePath,
            fit: BoxFit.cover,
          ),
          Center(
            child: SvgPicture.asset(
              AssetsPath.logoPath,
              width: 120,
            ),
          )
        ],
      ),
    );
  }
}
