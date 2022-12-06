import 'package:flutter/material.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      height: 60,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: white,
      onPressed: () {
        print('Signin with GOogle');
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            fixWidth,
            fixWidth,
            fixWidth,
            Image.asset(googleLogo, height: 40),
            AppText(
              text: ' Sign in with google',
              fontSize: textsize + 4,
              color: black,
            ),
          ],
        ),
      ),
    );
  }
}
