import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/Widgets/custom_text_field.dart';
import 'package:shoxy/core/Widgets/with_google.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/main.dart';
import 'package:shoxy/screens/04_signup/sign_up.dart';
import 'package:shoxy/screens/05_forget_password/forget_password.dart';
import 'package:shoxy/screens/07_main_screen/my_home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool visiblity = true;
  final _field_key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var controller;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Hello
              SizedBox(height: 70.h),
              Center(
                child: AppText(
                  text: 'Hello Again!',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              fixheight,
              Center(
                child: AppText(
                  text: 'Welcome Back. You\'ve Been Missed!',
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
                                visiblity = !visiblity;
                              });
                            },
                            icon: Icon(
                              visiblity == true
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            ),
                          ),
                          obsecure: visiblity == true ? true : false,
                        ),
                      ],
                    )),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: textsize),
                  TextButton(
                      onPressed: () {
                        takeMeTo(ForgetPassword(), context);
                      },
                      child: AppText(
                          text: 'Forget Password?',
                          fontSize: textsize,
                          color: kMainColor))
                ],
              ),
              fixheight,
              AppButton(
                  onPressed: () {
                    if (_field_key.currentState!.validate()) {
                      takeMeTo(MyHomePage(), context);
                    }
                  },
                  text: 'Sign In'),
              fixheight,

              SignInWithGoogle(), fixheight,
              fixheight,
              SizedBox(height: 50.h),
              Row(
                children: [
                  fixWidth,
                  AppText(
                    text: 'Don\'t have an account?',
                    fontSize: textsize - 2,
                    color: grey,
                  ),
                  TextButton.icon(
                      onPressed: () {
                        takeMeTo(SignUp(), context);
                      },
                      icon: Icon(
                        Icons.arrow_right_alt_rounded,
                        size: textsize + 20,
                      ),
                      label: AppText(
                        text: 'Sign Up',
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
