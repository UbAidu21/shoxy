import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    this.icon,
    this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);
  String? title;
  IconData? icon;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 70.w,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 65.h,
      leading: PopButton(),
      title: AppText(
        text: '$title',
        color: black,
        fontSize: textsize + 5,
      ),
      actions: [
        InkWell(
          onTap: () => onTap,
          child: CircleAvatar(
            child: Icon(
              icon,
              color: black,
            ),
            minRadius: 25.r,
            backgroundColor: white,
          ),
        )
      ],
    );
  }
}
