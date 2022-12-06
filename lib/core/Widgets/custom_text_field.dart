import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/common/common_var.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.controller,
    this.validaor,
    this.obsecure,
    this.suffix,
    this.hintText,
    this.onChange,
    this.prefix,
  }) : super(key: key);

  TextEditingController controller;
  String? Function(String?)? validaor;
  void Function(String?)? onChange;
  bool? obsecure;
  String? hintText;
  Widget? suffix;
  Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(40.r),
      child: TextFormField(
        validator: validaor,
        controller: controller,
        onChanged: onChange,
        obscureText: obsecure ?? false,
        style: TextStyle(color: Colors.black, fontSize: 24.sp),
        decoration: InputDecoration(
          prefixIcon: prefix, filled: true,
          fillColor: white,
          contentPadding: EdgeInsets.all(15),
          focusColor: white,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: white),
            borderRadius: BorderRadius.circular(35.0.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: white),
            borderRadius: BorderRadius.circular(35.0.r),
          ),
          // errorBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.redAccent),
          //   borderRadius: BorderRadius.circular(35.0),
          // ),
          hintStyle: TextStyle(
            fontSize: textsize + 4,
            color: grey,
          ),
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
