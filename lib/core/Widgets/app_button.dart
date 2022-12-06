import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

class AppButton extends StatelessWidget {
  AppButton({
    required this.onPressed,
    this.width,
    required this.text,
    Key? key,
  }) : super(key: key);
  VoidCallback onPressed;
  double? width;
  String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? 370.w,
      height: 60,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: kMainColor,
      onPressed: onPressed,
      child: AppText(
        text: text,
        fontSize: textsize + 2,
        color: white,
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  SearchButton({required this.onPressed, super.key});

  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 370.w,
      height: 50,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: white,
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 30,
          ),
          fixWidth,
          AppText(
            text: "Search",
            fontSize: textsize + 4,
            color: grey.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}

class PopButton extends StatelessWidget {
  const PopButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Get.to(Manue());
          Navigator.of(context).pop();
        },
        child: CircleAvatar(
          minRadius: 30.r,
          backgroundColor: white,
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 40.sp,
            color: black,
          ),
        ),
      ),
    );
  }
}
