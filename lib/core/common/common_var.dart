import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/screens/07_main_screen/navigation.dart';

//Images and Animations
const String imgPath = 'assets/images/';
const String dataPath = 'assets/data/';
const String animationsPath = 'assets/animations/';

// images

const String elipse = '${imgPath}Ellipse.png';
const String dots = '${imgPath}Blue-dots.png';
const String googleLogo = '${imgPath}google.png';
const String logo = '${imgPath}logoo.png';
const String imgOnB = '${imgPath}1.png';
const String imgOnB1 = '${imgPath}logo.png';
const String backBtn = '${imgPath}back_btn.png';
const String fourDots = '${imgPath}four-dots.png';

//Routers

takeMeTo(Widget page, BuildContext context) {
  return Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return page;
  }));
}

//Colors...
Color white = Colors.white;
Color black = Colors.black;
Color kMainColor = HexColor('#1DD5F0');
Color grey = Colors.grey;

//fixSized

SizedBox fixheight = SizedBox(
  height: 15.h,
);

SizedBox fixWidth = SizedBox(
  width: 15.w,
);

double defaultPadding = 10;

double textsize = 18.sp;
