import 'package:flutter/material.dart';
import 'package:shoxy/core/Widgets/app_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AppText(
        text: "Profile",
        fontSize: 40,
      )),
    );
  }
}
