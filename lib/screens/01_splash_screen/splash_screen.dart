import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/02_on_board/on_boarding1.dart';
import 'package:shoxy/screens/03_sign_in/sign_in.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5));

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 40.h),
                child: Image.asset("${imgPath}logoo.png")),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "SHOXY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.sp,
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 250.h,
                margin: EdgeInsets.only(top: 60.h),
                child: Lottie.asset(
                  "${animationsPath}load.json",
                ))
          ],
        ),
      ),
    );
  }
}
