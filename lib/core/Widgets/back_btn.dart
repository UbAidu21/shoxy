import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/common/common_var.dart';

class BackBtnImg extends StatelessWidget {
  const BackBtnImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(30.r),
        child: Image.asset(
          backBtn,
          height: 50.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
