import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/back_btn.dart';
import 'package:shoxy/core/Widgets/custom_text_field.dart';
import 'package:shoxy/core/Widgets/with_google.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/main.dart';
import 'package:shoxy/screens/07_main_screen/my_home_page.dart';

import '../../core/Widgets/app_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _field_key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  bool textVisiblity = false;
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
              SizedBox(height: 30.h),
              Row(
                children: [BackBtnImg()],
              ),
              Center(
                child: AppText(
                  text: 'Create Account',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              fixheight,
              Center(
                child: AppText(
                  text: 'Let\'s Create Account Togather',
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
                          text: 'Your Name',
                          fontSize: textsize + 4,
                          // color: black,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextField(
                          controller: email,
                          validaor: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Name';
                            }
                            return null;
                          },
                          hintText: 'Full Name',
                        ),
                        fixheight,
                        AppText(
                          text: 'Email Address',
                          fontSize: textsize + 4,
                          // color: black,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextField(
                          controller: name,
                          validaor: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                          hintText: 'Email',
                        ),
                        fixheight,
                        fixheight,
                        AppText(
                          text: 'Password:',
                          fontSize: textsize + 4,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextField(
                          controller: password,
                          validaor: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Password';
                            } else if (value.length < 5) {
                              return 'Password is too short';
                            }
                            return null;
                          },
                          hintText: 'Password',
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                textVisiblity = !textVisiblity;
                              });
                            },
                            icon: Icon(
                              textVisiblity == true
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            ),
                          ),
                          obsecure: textVisiblity == true ? true : false,
                        ),
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
                  text: 'Sign Up'),
              fixheight,

              SignInWithGoogle(),
              //  fixheight,
              // fixheight,

              Row(
                children: [
                  fixWidth,
                  fixWidth,
                  AppText(
                    text: 'Already have an account?',
                    fontSize: textsize - 2,
                    color: grey,
                  ),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_right_alt_rounded,
                        size: textsize + 20,
                      ),
                      label: AppText(
                        text: 'Sign In',
                        fontSize: textsize + 2,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
