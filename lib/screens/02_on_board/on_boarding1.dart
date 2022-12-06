import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/03_sign_in/sign_in.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Images with Brand Name

            Container(
              height: 450.h,
              width: MediaQuery.of(context).size.width,
              // color: kMainColor,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        elipse,
                        height: 200.h,
                      )),
                  Positioned(
                    top: 200.h,
                    // left: 50.w,
                    child: AppText(
                      text: 'Nike'.toUpperCase(),
                      fontSize: 150.sp,
                      fontWeight: FontWeight.bold,
                      color: grey.withOpacity(0.1),
                      letterSpacig: 10.w,
                    ),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 20.w,
                    child: Image.asset(
                      imgOnB,
                      height: 350.h,
                    ),
                  ),
                  Positioned(bottom: 0.h, left: 10.w, child: Image.asset(dots))
                ],
              ),
            ),
            //Text of Jouney
            AppText(
              text: 'Start Journey With Nike',
              fontSize: 40.sp,
              fontWeight: FontWeight.w400,
            ),
            fixheight,
            //Text Small
            AppText(
              text: "Smart, Gorgeuous & Fashionable Collection",
              color: grey,
              fontSize: 20.sp,
            ),

            //Row
            SizedBox(
              height: 80,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppButton(
                    onPressed: () {
                      takeMeTo(SignIn(), context);
                    },
                    width: 200.w,
                    text: 'Get Started',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
