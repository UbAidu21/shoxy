import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/Widgets/back_btn.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/main.dart';
import 'package:shoxy/screens/07_main_screen/my_home_page.dart';

import '../../core/Widgets/custom_text_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _field_key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Hello
              SizedBox(height: 50.h),
              Row(children: [BackBtnImg()]),
              Center(
                child: AppText(
                  text: 'Recovery Password',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              fixheight,
              Center(
                child: AppText(
                  text:
                      'Please Enter Your Email Address To\n \t\t\t Reicive A Verification Code',
                  fontSize: textsize,
                  color: grey,
                ),
              ),
              fixheight, fixheight,
              //welcome Text
              Container(
                width: MediaQuery.of(context).size.width,
                child: Form(
                    key: _field_key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'Email Address',
                          fontSize: textsize + 4,
                          // color: black,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextField(
                          controller: email,
                          validaor: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                          hintText: 'Email',
                        ),
                        fixheight,
                      ],
                    )),
              ),

              fixheight,
              AppButton(
                  onPressed: () {
                    if (_field_key.currentState!.validate()) {
                      takeMeTo(MyHomePage(), context);
                    }
                  },
                  text: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }
}
